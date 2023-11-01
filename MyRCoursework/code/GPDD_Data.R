## Load maps and packages
library(maps)

## Load data
load("../data/GPDDFiltered.RData")

pdf("../results/GPDD_map.pdf", width=12, height=8)

# Create the world map
map('world', fill=TRUE, col="white", bg='blue', ylim=c(-50, 120), mar=c(0,0,0,0))

# Superimpose the locations from GPDD data
points(gpdd$long, gpdd$lat, col="red", pch=20, cex=0.8)

title("Locations from GPDD Data")

dev.off()

## Potential biases in GPDD
# 1.The data in GPDD are overconcentrated in North America and Europe. In contrast, little data is available in other regions. 
#The analysis may be biased towards relatively concentrated regions.
#2.In some areas, there is no data to support it, which may also bias the results
