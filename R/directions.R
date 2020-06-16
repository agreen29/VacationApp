#' A function to provide visual and textual directions from a starting location to an ending location
#'
#' @param from The starting location of your designated route. Must be a string in the format: "Street Address, City, State"
#' @param to The ending location of your designated route. Must be a string in the format: "Street Address, City, State"
#'
#' @return List of Data Table, Leaflet Map
#'
#' @importFrom leaflet
#' @importFrom tidyverse
#' @importFrom jsonlite fromJSON
#' @importFrom httr GET
#' 
#' @export

directions <- function(from, to){
  query <- get_query(from, to)
  api_data <- fromJSON(rawToChar(query$content))
  start_long_pt <- api_data$route$locations$displayLatLng[1,1]
  start_lat_pt <- api_data$route$locations$displayLatLng[1,2]
  
  data_directions <- api_data$route$legs$maneuvers %>% as.data.frame()
  start_lat_long <- data_directions$startPoint
  final_data <- data_directions %>% select(distance, narrative) %>% cbind(start_lat_long)
  colnames(final_data) <- c("Distance in Miles", "Directions", "Longitude", "Latitude")
  # leaflet map
  map <- leaflet(final_data) %>% addTiles() %>%
    setView( start_long_pt, start_lat_pt ,15) %>%
    addMarkers(~Longitude, ~Latitude, popup = final_data$Directions) %>%
    addPolylines(
      lat = final_data$Latitude, lng = final_data$Longitude,
      color = "red"
    )
  return (list(final_data, map))
  
}
#' Helper function to query the data from the MapQuest API
#'
#' @param from The starting location of your designated route. Must be a string in the format: "Street Address, City, State"
#' @param to The ending location of your designated route. Must be a string in the format: "Street Address, City, State"
#'
#' @return A List of data from query specifying directions, latitude and longitude points of each direction, etc.
get_query <- function(from, to){
  query <- GET("http://www.mapquestapi.com/directions/v2/route",
               query = list(
                 key = "K4wn45o6Nklb6jsL8aRS8G4Fx6DqQ3DZ",
                 from= from,
                 to = to
               ))
  return (query)
}