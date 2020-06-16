VacationApp
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

<!-- badges: end -->

The goal of VacationApp is to provide information to the user about the
destination they are wishing to travel to. This package will display
information about the route directions and the forecasted weather of
their destination of interest

## Installation

You can install the released version of VacationApp from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("VacationApp")
```

## Directions Function

The directions() function will provide directions on how to arrive to
the designated route of choice. This function takes the following
inputs: from, to. The parameter *from* will take in a string specifying
the starting location of their travel route. The parameter *to* will
take in a string specifying the final destination of their travel route.
Both parameters will need to be in the format “Street Address, City,
State”. The function will return a data table of step-by-step directions
and a Leaflet map visualizing the directions. Click on the Leaflet map
markers to view each step of the directions to recieve a better
visualization on how to get to your next vacation
destination\!

<div id="htmlwidget-7ab57412f7b1df4d5773" class="leaflet html-widget" style="width:100%;height:216px;">

</div>

<script type="application/json" data-for="htmlwidget-7ab57412f7b1df4d5773">

```r
my_directions <- directions(from = "12 Garden St, Chatham, NJ", to = "275 Lincoln St, San Luis Obispo, CA")
```

``` r
#displaying the data frame
out <- my_directions[[1]]
```

## Weather Function

The query\_weather() function will provide the following information
concerning the forecast weather for their destination: the daily
temperature, precipitation, wind speed, humidity, visibility, time of
sunrise, and time of sunset\! The parameter *lat\_input* will take in an
integer of the latitude where you want to collect information on the
given weather fields during the given dates. The parameter *lng\_input*
will take in an integer of the longitude where you want to collect
information on the given weather fields during the given dates. The
parameter *day\_leaving* will take in the date the user is planning to
leave for their vacation in yyyy-mm-dd format. The parameter
*day\_returning* will take in the last date the user is planning to be
on their vacation in yyyy-mm-dd format. The parameter *num\_days* will
take in the number of days between the start date and the end date of
the vacation. This function will return a a data frame with all weather
forecasts for the given dates above. This information will be extremely
useful for families who want to compare different camping sites, so they
will be able to make an informed decision on the best travel spot for
their weekend getaway.

(fields, lat\_input, lng\_input, day\_leaving, day\_returning,
num\_days)

``` r
#fields of interest
fields <- list("precipitation", "temp", "feels_like", "wind_speed", "visibility", "humidity", "sunrise", "sunset") 

output <- make_output(fields = fields, lat_input = 35.2877,lng_input = -120.6673, day_leaving = "2020-06-18", day_returning = "2020-06-20")
```
