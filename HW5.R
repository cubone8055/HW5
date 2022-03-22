library(maps)
library(mapdata)
library(ggplot2)
library(ggrepel)
library(cowplot)
library(socviz)
california <- map_data("state", region = 'CA')
head(california)

load('C:\\Users\\nickm\\Downloads\\wind_turbines.rda')
head(wind_turbines$t_state)
wind_ca <- wind_turbines[wind_turbines$t_state == 'CA',]
head(wind_ca)

ggplot(data=california, aes(x=long, y=lat, group=group)) +
  geom_polygon(fill="white", color="black")  + 
  geom_point(
    data = wind_ca,
    aes(x = xlong, y = ylat),
    inherit.aes = FALSE,
    size = 1.5,
    color = "black", stroke = 0.2
  )


