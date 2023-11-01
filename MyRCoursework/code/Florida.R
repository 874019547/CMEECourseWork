### 1)
load("../data/KeyWestAnnualMeanTemperature.RData")
class(ats)
head(ats)
plot(ats)
mycor <- cor(ats$Year, ats$Temp)
mycor

### 2)

set.seed(1234)
num_permutations <- 10000
permuted_corrs <- numeric(num_permutations)
for (i in 1:num_permutations) {
  shuffled_temps <- sample(ats$Temp)
  permuted_corr <- cor(ats$Year, shuffled_temps)
  permuted_corrs[i] <- permuted_corr
}

### 3)
p_value <- sum(abs(permuted_corrs) >= abs(mycor))/num_permutations
p_value
cat("There is a significant correlation between years and temperatures (p < 0.05)!\n")

