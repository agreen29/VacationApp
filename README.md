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
#displaying the data frame
out <- my_directions[[1]]
```

``` r
#displaying the data frame
out <- my_directions[[1]]
```

| Distance in Miles | Directions                                                                                                                               |   Longitude | Latitude |
| ----------------: | :--------------------------------------------------------------------------------------------------------------------------------------- | ----------: | -------: |
|            0.0130 | Start out going northwest on Garden St toward Conger Ter.                                                                                |  \-74.41621 | 40.72974 |
|            0.0570 | Turn right onto Conger Ter.                                                                                                              |  \-74.41642 | 40.72984 |
|            1.4680 | Turn left onto Southern Blvd/County Hwy-647.                                                                                             |  \-74.41587 | 40.73055 |
|            0.7370 | Turn left onto Shunpike Rd/County Hwy-646. Continue to follow Shunpike Rd.                                                               |  \-74.43003 | 40.74601 |
|            0.7580 | Turn left onto Loantaka Way/County Hwy-636.                                                                                              |  \-74.43844 | 40.75358 |
|            2.4600 | Turn right onto Spring Valley Rd/County Hwy-601. Continue to follow County Hwy-601.                                                      |  \-74.45249 | 40.75309 |
|            6.4210 | Merge onto I-287 N via the ramp on the left.                                                                                             |  \-74.46851 | 40.78462 |
|          727.8751 | Merge onto I-80 W via EXIT 41B toward Del Water Gap (Portions toll) (Passing through Pennsylvania and Ohio, then crossing into Indiana). |  \-74.41687 | 40.86372 |
|           17.0460 | Merge onto I-80 W/I-94 W via EXIT 21 toward IN-51 S (Crossing into Illinois).                                                            |  \-87.22853 | 41.59174 |
|            6.6910 | Keep left to take I-80 W/I-294 N toward Wisconsin-Iowa (Portions toll).                                                                  |  \-87.54120 | 41.57785 |
|            0.3100 | Take the I-80 W exit toward Iowa.                                                                                                        |  \-87.66994 | 41.57825 |
|          145.0400 | Merge onto I-80 W (Portions toll).                                                                                                       |  \-87.67565 | 41.57943 |
|           27.1420 | Stay straight to go onto I-280 W (Crossing into Iowa).                                                                                   |  \-90.32149 | 41.44035 |
|          285.6210 | Merge onto I-80 W via the exit on the left toward Des Moines.                                                                            |  \-90.67574 | 41.59692 |
|            3.5440 | Stay straight to go onto I-80 (EXPRESS) W.                                                                                               |  \-95.83530 | 41.23191 |
|          352.7650 | I-80 (EXPRESS) W becomes I-80 W (Crossing into Nebraska).                                                                                |  \-95.90328 | 41.23241 |
|          186.8140 | Merge onto I-76 W via EXIT 102 on the left toward Denver (Crossing into Colorado).                                                       | \-102.15162 | 41.02877 |
|          501.7810 | I-76 W becomes I-70 W (Crossing into Utah).                                                                                              | \-105.07701 | 39.78712 |
|          401.3790 | Merge onto I-15 S via the exit on the left toward Las Vegas (Passing through Arizona and Nevada, then crossing into California).         | \-112.59875 | 38.57983 |
|            0.5740 | Take the CA-58 W exit, EXIT 179, toward Bakersfield.                                                                                     | \-117.07107 | 34.87571 |
|          134.1480 | Merge onto CA-58 W.                                                                                                                      | \-117.07932 | 34.87374 |
|            4.2500 | Stay straight to go onto Stockdale Hwy.                                                                                                  | \-119.17566 | 35.35538 |
|            4.6360 | Keep left at the fork to continue on Stockdale Hwy.                                                                                      | \-119.25070 | 35.35436 |
|           25.2630 | Merge onto I-5 N toward Sacramento.                                                                                                      | \-119.33277 | 35.35486 |
|            0.3180 | Take the CA-46 exit, EXIT 278, toward Lost Hills/Paso Robles.                                                                            | \-119.64971 | 35.61178 |
|            0.0210 | Keep left to take the ramp toward Lost Hills/Paso Robles.                                                                                | \-119.65101 | 35.61600 |
|           63.7750 | Turn left onto Highway 46/CA-46. Continue to follow CA-46.                                                                               | \-119.65093 | 35.61630 |
|            0.0090 | Turn left to stay on CA-46.                                                                                                              | \-120.68558 | 35.64248 |
|           28.9690 | Merge onto US-101 S.                                                                                                                     | \-120.68551 | 35.64236 |
|            0.1580 | Take the Broad St exit, EXIT 202B.                                                                                                       | \-120.66593 | 35.28498 |
|            0.0650 | Turn slight right onto Broad St/CA-227.                                                                                                  | \-120.66805 | 35.28386 |
|            0.2630 | Turn right onto Lincoln Ave/CA-227. Continue to follow Lincoln Ave.                                                                      | \-120.66867 | 35.28464 |
|            0.0000 | 275 LINCOLN AVE is on the left.                                                                                                          | \-120.66709 | 35.28764 |

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

|                        | Tue Jun 16 | Wed Jun 17 | Thu Jun 18 | Fri Jun 19 | Sat Jun 20 |
| ---------------------- | :--------- | :--------- | :--------- | :--------- | :--------- |
| Min Temp (F)           | 49.1       | 48.87      | 51.3       | 51.01      | 51.3       |
| Max Temp (F)           | 82.67      | 85.73      | 77.69      | 74.87      | 79.25      |
| Min Feels-Like (F)     | 49.1       | 48.87      | 51.3       | 51.01      | 51.3       |
| Max Feels-Like (F)     | 80.44      | 82.51      | 77.69      | 74.87      | 79.25      |
| Max Precipitation      | 0          | 0          | 0          | 0          | 0          |
| Min Wind Speed (mph)   | 4.77       | 1.37       | 1.1        | 0.95       | 0.35       |
| Max Wind Speed (mph)   | 8.92       | 8.09       | 10.28      | 10.22      | 10.07      |
| Min Visibility (miles) | 15         | 15         | 12.22      | 12.22      | 12.22      |
| Max Visibility (miles) | 15         | 15         | 15         | 15         | 15         |
| Min Humidity           | 22.4       | 17.8       | 32.2       | 41.6       | 34.3       |
| Max Humidity           | 85         | 79.1       | 87         | 88.4       | 82.6       |
| Sunrise                | 05:47      | 05:47      | 05:48      | 05:48      | 05:48      |
| Sunset                 | 20:19      | 20:20      | 20:20      | 20:20      | 20:20      |
