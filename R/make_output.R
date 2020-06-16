#'@title Make Weather Forecasting Data Frame
#'
#'@description The make_output function greats a data frame that includes weather forecasting for up to 15 days from today, after a user inputs
#' a starting data and ending date of a trip. Th function uses another function in this package to get an address and plugs it into
#' a query for a weather API to collect the forecast on that location.

#' @description This is a helper function that takes in dates in yyyy-mm-dd format and outputs them in a form that the API can handle:
#' @importFrom anytime anydate
#'
#' @param day_leaving the date the user is planning to leave for their vacation in yyyy-mm-dd format
#' @param day_returning the last date the user is planning to be on their vacation in yyyy-mm-dd format
#'
#' @return a vector that includes the start time of the vacation and the end time in ISO8601 format for the API
date_input <- function(day_leaving, day_returning){

  start_time <- anydate(day_leaving)
  end_time <- anydate(day_returning)

  return(c(start_time, end_time))
}


#' @description This is the function that calls the API with the given dates from the date_input fucntion and the location from the
#' directions function.
#'
#' @importFrom httr GET
#' @importFrom jsonlite fromJSON
#' @importFrom purrr pmap
#'
#' @param fields this is a list of weather fields that you want to collect in your weather query from climacell,
#' the full list of offered fields are given at https://developer.climacell.co/v3/docs/forecast in the "Daily" section,
#' this should be in a list format
#' @param lat_input this is a latitude where you want to collect information on the given weather fields during the given dates
#' @param lng_input this is a longitude where you want to collect information on the given weather fields during the given dates
#' @param dates this is the output of the date_input function and gives the starting and ending date for the query to
#' collect weather data for
#'
#' @return this returns a list of x lists that each include the output of the query for the particular weather field associated
#' with it (x is the number of fields you listed in the fields parameter)

query_weather <- function(fields, lat_input, lng_input, dates) {
  weather <- pmap(list(x = fields),
                  .f = function(x) {
                    data.frame(fromJSON(rawToChar(
                      GET(url = "https://api.climacell.co/v3/weather/forecast/daily",
                          query= list(
                            lat = lat_input,
                            lon = lng_input,
                            unit_system = "us",
                            fields = x,
                            start_time = dates[1],
                            end_time = dates[2],
                            apikey = "Sb9vXfDnuOb1qRqhdU0wgi7L9FeMB2D5"))$content)))
                  })
  return (weather)
}

#'@description this function uses the list of lists from the returned element in query_weather and creates a dataframe to show all weather
#'requested in a nice manner and for the dates specified
#'
#'@importFrom lubridate rbind
#'@importFrom purrr pmap
#'@import datetime
#'@import tidyverse
#'
#'@param big_query this is the outputted list of all data collected from the query_weather helper function
#'@param num_days this is the number of days between the start date and the end date of the vacation, this
#'should be calculated with dates[2] - dates[1] + 2
#'
#'@return a data frame with all weather for the given dates above and the given fields above
#'
#'@export

make_output <- function(big_query, num_days) {

  # temp out
  d_temp <- big_query[[2]]
  #names for all
  names <- d_temp$observation_time[[1]]
  names <- names %>% as.Date()
  names <- format(names,"%a %b %d")

  temp_data <- as.data.frame(pmap(list(x = 1:num_days),
                                  .f = function(x) {
                                    `Min Temp (F)` <- d_temp$temp[[x]]$min$value[1]
                                    `Max Temp (F)` <- d_temp$temp[[x]]$max$value[2]
                                    return(rbind(`Min Temp (F)`, `Max Temp (F)`))
                                  }), stringsAsFactors=FALSE)

  colnames(temp_data) <- names

  # precip out
  d_precip <- big_query[[1]]
  precip_data <- as.data.frame(t(unlist(pmap(list(x = 1:num_days),
                                             .f = function(x) {
                                               precip <- d_precip$precipitation[[x]]$max$value
                                               return(rbind(precip))
                                             }))), stringsAsFactors = FALSE)

  row.names(precip_data) <- "Max Precipitation"
  colnames(precip_data) <- names

  #feels like out
  d_feels <- big_query[[3]]

  feels_data <- as.data.frame(pmap(list(x = 1:num_days),
                                   .f = function(x) {
                                     `Min Feels-Like (F)` <- d_feels$feels_like[[x]]$min$value[1]
                                     `Max Feels-Like (F)` <- d_feels$feels_like[[x]]$max$value[2]
                                     return(rbind(`Min Feels-Like (F)`, `Max Feels-Like (F)`))
                                   }), stringsAsFactors=FALSE)

  colnames(feels_data) <- names

  # wind out
  d_wind <- big_query[[4]]
  wind_data <- as.data.frame(pmap(list(x = 1:num_days),
                                  .f = function(x) {
                                    `Min Wind Speed (mph)` <- d_wind$wind_speed[[x]]$min$value[1]
                                    `Max Wind Speed (mph)` <- d_wind$wind_speed[[x]]$max$value[2]
                                    return(rbind(`Min Wind Speed (mph)`, `Max Wind Speed (mph)`))
                                  }), stringsAsFactors=FALSE)
  colnames(wind_data) <- names

  # visibility out
  d_visibility <- big_query[[5]]
  vis_data <- as.data.frame(pmap(list(x = 1:num_days),
                                 .f = function(x) {
                                   `Min Visibility (miles)` <- d_visibility$visibility[[x]]$min$value[1]
                                   `Max Visibility (miles)` <- d_visibility$visibility[[x]]$max$value[2]
                                   return(rbind(`Min Visibility (miles)`, `Max Visibility (miles)`))
                                 }), stringsAsFactors=FALSE)

  colnames(vis_data) <- names

  # humidity out
  d_humidity <- big_query[[6]]

  hum_data <- as.data.frame(pmap(list(x = 1:num_days),
                                 .f = function(x) {
                                   `Min Humidity` <- d_humidity$humidity[[x]]$min$value[1]
                                   `Max Humidity` <- d_humidity$humidity[[x]]$max$value[2]
                                   return(rbind(`Min Humidity`, `Max Humidity`))
                                 }), stringsAsFactors=FALSE)

  colnames(hum_data) <- names

  # sunrise
  d_sunrise <- big_query[[7]]

  sunrise_data <- as.data.frame(pmap(list(x = 1:num_days),
                                     .f = function(x) {
                                       sunrise <- d_sunrise$sunrise$value[[x]]
                                       time <- as.time(as.datetime(sunrise) - 7*60*60)
                                       sunrise <- as.character(time)
                                       # sunrise <- as.datetime(as.POSIXct(sunrise, tz = "America/Los_Angeles"))
                                       # sunrise <- as.time(sunrise)
                                       return(sunrise)
                                     }), stringsAsFactors = FALSE)

  row.names(sunrise_data) <- "Sunrise"
  colnames(sunrise_data) <- names

  # sunset
  d_sunset <- big_query[[8]]
  sunset_data <- as.data.frame(pmap(list(x = 1:num_days),
                                    .f = function(x) {
                                      sunset <- d_sunset$sunset$value[[x]]
                                      time <- as.time(as.datetime(sunset) - 7*60*60)
                                      sunset <- as.character(time)
                                      return(sunset)
                                    }), stringsAsFactors = FALSE)


  row.names(sunset_data) <- "Sunset"
  colnames(sunset_data) <- names

  weather <- rbind(temp_data, feels_data, precip_data, wind_data, vis_data, hum_data,  sunrise_data, sunset_data)
  return(weather)
}
