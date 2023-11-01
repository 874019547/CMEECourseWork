library(readr)

## Read Tree.csv from data
trees_data <- read.csv("../data/trees.csv")

Radians <- trees_data$Angle.degrees * pi/180  # Fixing the column name typo

trees_data$Tree.Height.m <- trees_data$Distance.m * tan(Radians)

write.csv(trees_data, "../results/TreeHts.csv", row.names = FALSE)