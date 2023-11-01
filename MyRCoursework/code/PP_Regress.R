library(ggplot2)
library(dplyr)
library(ggthemes)

## load data
MyDF <- read.csv("../data/EcolArchives-E089-51-D1.csv")
# PP_Regress.R

# Create a function to calculate regression results
calculate_regression <- function(df) {
  model <- lm(Predator.mass ~ Prey.mass, data = df)
  stats <- summary(model)
  
  slope <- coef(model)[2]
  intercept <- coef(model)[1]
  r2 <- stats$r.squared
  f_statistic <- stats$fstatistic[1]
  p_value <- pf(f_statistic, stats$fstatistic[2], stats$fstatistic[3], lower.tail = FALSE)
  
  return(data.frame(slope = slope, 
                    intercept = intercept, 
                    R2 = r2, 
                    F_statistic = f_statistic, 
                    p_value = p_value))
}

# Group data by FeedingType and Predator.lifeStage, then calculate regression for each group

regression_results <- MyDF %>%
  group_by(MyDF$Type.of.feeding.interaction,MyDF$Predator.lifeStage) %>%
  do(calculate_regression(.))
# Save regression results to CSV

write.csv(regression_results, "../results/PP_Regress_Results.csv", row.names = FALSE)

# Plot data with regression lines for each combination of FeedingType and Predator.lifeStage
plot <- ggplot(MyDF, aes(x = log(Prey.mass), y = log(Predator.mass),
                         color = Predator.lifestage)) +
  geom_point(size = 2, shape = 4) +
  theme_bw() +
  facet_wrap(. ~ Type.of.feeding.interaction, ncol = 1) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(x = "Prey Mass in grams", y = "Predator Mass in grams") +
  theme()


# Save plot to PDF
pdf("../results/predator_prey_relationship.pdf")
print(plot)
dev.off()
