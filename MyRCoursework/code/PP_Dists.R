# Import necessary libraries
library(dplyr)
library(tidyr)

# Load data from "data"
MyDF <- read.csv("../data/EcolArchives-E089-51-D1.csv")

## SizeRatio
MyDF$SizeRatio <- MyDF$Prey.mass / MyDF$Predator.mass

##Type.of.feeding.interaction
feeding_types <- unique(MyDF$Type.of.feeding.interaction)

## Create histograms for Predator mass by feeding interaction type
pdf("../results/Pred_Subplots.pdf")
par(mfrow=c(2, length(feeding_types)))
for (feeding_type in feeding_types) {
  subset_MyDF <- subset(MyDF, Type.of.feeding.interaction == feeding_type)
  hist(log(subset_MyDF$Predator.mass), main=paste(feeding_type), xlab="Log(Predator mass)", ylab="count")
}
graphics.off()

## Create histogram for Prey mass by feeding interaction type
pdf("../results/Prey_Subplots.pdf")
par(mfrow=c(2, length(feeding_types)))
for (feeding_type in feeding_types) {
  subset_MyDF <- subset(MyDF, Type.of.feeding.interaction == feeding_type)
  hist(log(subset_MyDF$Prey.mass), main=paste(feeding_type), xlab="Log(Prey mass)",ylab="count")
}
graphics.off()

## Create histogram for  Size Ratio by feeding interaction type
pdf("../results/SizeRatio_Subplots.pdf")
par(mfrow=c(2, length(feeding_types)))
for (feeding_type in feeding_types) {
  subset_MyDF <- subset(MyDF, Type.of.feeding.interaction == feeding_type)
  hist(log(subset_MyDF$SizeRatio), main=paste(feeding_type), xlab="Log10(Size Ratio)",ylab="count")
}
graphics.off()
## Calculate  mean and median for predator mass, prey mass, and size ratio
results <- MyDF %>% 
  group_by(Type.of.feeding.interaction) %>% 
  summarise(Mean_Predator = mean(MyDF$Predator.mass, na.rm = TRUE),
            Median_Predator = median(MyDF$Predator.mass, na.rm = TRUE),
            Mean_Prey = mean(MyDF$Prey.mass, na.rm = TRUE),
            Median_Prey = median(MyDF$Prey.mass, na.rm = TRUE),
            Mean_SizeRatio = mean(MyDF$SizeRatio, na.rm = TRUE),
            Median_SizeRatio = median(MyDF$SizeRatio, na.rm = TRUE))

# Save results to a CSV in the results directory
write.csv(results, file = "../results/PP_Results.csv", row.names = FALSE)



















