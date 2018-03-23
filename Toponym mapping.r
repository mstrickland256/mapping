#LIBRARIES
library(leaflet)

#ACCESSING FILES
setwd("C:\\whatever")
cities <- read.csv("China Toponyms.csv", encoding = "UTF-8", stringsAsFactors = FALSE)

#DRAWING BASIC MAP
m <- leaflet() %>% setView(lng = 109.38, lat = 35.066, zoom = 3)
m %>% addTiles()
m %>% addProviderTiles(providers$CartoDB.Positron)

#SUBSETTING DATA & PLOTTING POINTS ON MAP
soughtfor <- cities[grep("江", cities$City), ]
leaflet(soughtfor) %>% addTiles() %>% addCircleMarkers(radius = 6,
color = "blue",
stroke = FALSE, fillOpacity = 0.5
)
