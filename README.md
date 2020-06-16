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
visualization on how to get to your next vacation destination\!

``` r
my_directions <- directions(from = "12 Garden St, Chatham, NJ", to = "275 Lincoln St, San Luis Obispo, CA")
#displaying the data frame
out <- my_directions[[1]]
#displaying Leaflet Map
my_directions[[2]]
```

<!--html_preserve-->

<div id="htmlwidget-468ecb1d067fd8ab7757" class="leaflet html-widget" style="width:100%;height:480px;">

</div>

<script type="application/json" data-for="htmlwidget-468ecb1d067fd8ab7757">{"x":{"options":{"crs":{"crsClass":"L.CRS.EPSG3857","code":null,"proj4def":null,"projectedBounds":null,"options":{}}},"calls":[{"method":"addTiles","args":["//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",null,null,{"minZoom":0,"maxZoom":18,"tileSize":256,"subdomains":"abc","errorTileUrl":"","tms":false,"noWrap":false,"zoomOffset":0,"zoomReverse":false,"opacity":1,"zIndex":1,"detectRetina":false,"attribution":"&copy; <a href=\"http://openstreetmap.org\">OpenStreetMap<\/a> contributors, <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA<\/a>"}]},{"method":"addMarkers","args":[[40.729744,40.729839,40.730549,40.746014,40.753582,40.75309,40.784615,40.86372,41.591743,41.577854,41.578255,41.57943,41.440346,41.596916,41.231907,41.232407,41.02877,39.787117,38.579834,34.875713,34.873745,35.355377,35.354359,35.354855,35.611778,35.615997,35.616295,35.642483,35.642365,35.284985,35.283859,35.284641,35.28764],[-74.416214,-74.41642,-74.415871,-74.430031,-74.438438,-74.452492,-74.468513,-74.41687,-87.228531,-87.541199,-87.669945,-87.675652,-90.321487,-90.675735,-95.835304,-95.903282,-102.151619,-105.077011,-112.598755,-117.071068,-117.079323,-119.175659,-119.250702,-119.332771,-119.649712,-119.651009,-119.650925,-120.685577,-120.685509,-120.665932,-120.668045,-120.668671,-120.667091],null,null,null,{"interactive":true,"draggable":false,"keyboard":true,"title":"","alt":"","zIndexOffset":0,"opacity":1,"riseOnHover":false,"riseOffset":250},["Start out going northwest on Garden St toward Conger Ter.","Turn right onto Conger Ter.","Turn left onto Southern Blvd/County Hwy-647.","Turn left onto Shunpike Rd/County Hwy-646. Continue to follow Shunpike Rd.","Turn left onto Loantaka Way/County Hwy-636.","Turn right onto Spring Valley Rd/County Hwy-601. Continue to follow County Hwy-601.","Merge onto I-287 N via the ramp on the left.","Merge onto I-80 W via EXIT 41B toward Del Water Gap (Portions toll) (Passing through Pennsylvania and Ohio, then crossing into Indiana).","Merge onto I-80 W/I-94 W via EXIT 21 toward IN-51 S (Crossing into Illinois).","Keep left to take I-80 W/I-294 N toward Wisconsin-Iowa (Portions toll).","Take the I-80 W exit toward Iowa.","Merge onto I-80 W (Portions toll).","Stay straight to go onto I-280 W (Crossing into Iowa).","Merge onto I-80 W via the exit on the left toward Des Moines.","Stay straight to go onto I-80 (EXPRESS) W.","I-80 (EXPRESS) W becomes I-80 W (Crossing into Nebraska).","Merge onto I-76 W via EXIT 102 on the left toward Denver (Crossing into Colorado).","I-76 W becomes I-70 W (Crossing into Utah).","Merge onto I-15 S via the exit on the left toward Las Vegas (Passing through Arizona and Nevada, then crossing into California).","Take the CA-58 W exit, EXIT 179, toward Bakersfield.","Merge onto CA-58 W.","Stay straight to go onto Stockdale Hwy.","Keep left at the fork to continue on Stockdale Hwy.","Merge onto I-5 N toward Sacramento.","Take the CA-46 exit, EXIT 278, toward Lost Hills/Paso Robles.","Keep left to take the ramp toward Lost Hills/Paso Robles.","Turn left onto Highway 46/CA-46. Continue to follow CA-46.","Turn left to stay on CA-46.","Merge onto US-101 S.","Take the Broad St exit, EXIT 202B.","Turn slight right onto Broad St/CA-227.","Turn right onto Lincoln Ave/CA-227. Continue to follow Lincoln Ave.","275 LINCOLN AVE is on the left."],null,null,null,null,{"interactive":false,"permanent":false,"direction":"auto","opacity":1,"offset":[0,0],"textsize":"10px","textOnly":false,"className":"","sticky":true},null]},{"method":"addPolylines","args":[[[[{"lng":[-74.416214,-74.41642,-74.415871,-74.430031,-74.438438,-74.452492,-74.468513,-74.41687,-87.228531,-87.541199,-87.669945,-87.675652,-90.321487,-90.675735,-95.835304,-95.903282,-102.151619,-105.077011,-112.598755,-117.071068,-117.079323,-119.175659,-119.250702,-119.332771,-119.649712,-119.651009,-119.650925,-120.685577,-120.685509,-120.665932,-120.668045,-120.668671,-120.667091],"lat":[40.729744,40.729839,40.730549,40.746014,40.753582,40.75309,40.784615,40.86372,41.591743,41.577854,41.578255,41.57943,41.440346,41.596916,41.231907,41.232407,41.02877,39.787117,38.579834,34.875713,34.873745,35.355377,35.354359,35.354855,35.611778,35.615997,35.616295,35.642483,35.642365,35.284985,35.283859,35.284641,35.28764]}]]],null,null,{"interactive":true,"className":"","stroke":true,"color":"red","weight":5,"opacity":0.5,"fill":false,"fillColor":"red","fillOpacity":0.2,"smoothFactor":1,"noClip":false},null,null,null,{"interactive":false,"permanent":false,"direction":"auto","opacity":1,"offset":[0,0],"textsize":"10px","textOnly":false,"className":"","sticky":true},null]}],"setView":[[40.729744,-74.416214],15,[]],"limits":{"lat":[34.873745,41.596916],"lng":[-120.685577,-74.415871]}},"evals":[],"jsHooks":[]}</script>

<!--/html_preserve-->

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

make_output(fields = fields, lat_input = 35.2877,lng_input = -120.6673, day_leaving = "2020-06-18", day_returning = "2020-06-20")
#>                        Tue Jun 16 Wed Jun 17 Thu Jun 18 Fri Jun 19 Sat Jun 20
#> Min Temp (F)                49.19       49.1      50.27      49.91      49.69
#> Max Temp (F)                81.91      84.07      76.83      73.89      76.73
#> Min Feels-Like (F)          49.19       49.1      50.27      49.91      49.69
#> Max Feels-Like (F)          79.99      81.31      76.83      73.89      76.73
#> Max Precipitation               0          0          0          0          0
#> Min Wind Speed (mph)         4.36       0.74       1.79       0.92       0.23
#> Max Wind Speed (mph)         8.66       8.58      10.42      10.77       9.76
#> Min Visibility (miles)         15         15      12.22      12.22      12.23
#> Max Visibility (miles)         15         15         15         15         15
#> Min Humidity                 23.6       19.4       37.9       43.4       39.2
#> Max Humidity                 77.8       77.1       86.2         92       89.7
#> Sunrise                     05:47      05:47      05:48      05:48      05:48
#> Sunset                      20:19      20:20      20:20      20:20      20:20
```
