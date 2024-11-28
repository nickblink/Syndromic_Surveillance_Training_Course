# Set seed for reproducibility
set.seed(123)

# Define time range
time <- 1:60

# Model 1: outcomet = β0 + εt
beta0_1 <- 10
epsilon_1 <- rnorm(length(time), mean = 0, sd = 1)
outcome1 <- beta0_1 + epsilon_1

# Model 2: outcomet = β0 + β1·time + εt
beta0_2 <- 5
beta1_2 <- 0.2
epsilon_2 <- rnorm(length(time), mean = 0, sd = 1)
outcome2 <- beta0_2 + beta1_2 * time + epsilon_2

# Model 3: outcomet = β0 + β1·time + β2·time2 + εt
beta0_3 <- 2
beta1_3 <- 0.8
beta2_3 <- -0.01
epsilon_3 <- rnorm(length(time), mean = 0, sd = 1)
outcome3 <- beta0_3 + beta1_3 * time + beta2_3 * time^2 + epsilon_3

# Model 4: outcomet = β0 + β1·sin(2πt/12) + β2·cos(2πt/12) + εt
beta0_4 <- 8
beta1_4 <- 3
beta2_4 <- -2
epsilon_4 <- rnorm(length(time), mean = 0, sd = 1)
outcome4 <- beta0_4 + beta1_4 * sin(2 * pi * time / 12) + beta2_4 * cos(2 * pi * time / 12) + epsilon_4

# Combine into a data frame
data <- data.frame(
  time = time,
  outcome1 = outcome1,
  outcome2 = outcome2,
  outcome3 = outcome3,
  outcome4 = outcome4
)

# Display the first few rows of the dataset
head(data)

# Plot the results
par(mfrow = c(2, 2))
plot(time, outcome1, type = "l", main = 'A', ylab = "Outcome", xlab = "Time")
plot(time, outcome4, type = "l", main = 'B', ylab = "Outcome", xlab = "Time")
plot(time, outcome3, type = "l", main = 'C', ylab = "Outcome", xlab = "Time")
plot(time, outcome2, type = "l", main = 'D', ylab = "Outcome", xlab = "Time")



### Time and seasonal trend
# Model 5: Time and seasonal trend
beta0_5 <- 8
betatime_5 <- 0.2
beta1_5 <- 3
beta2_5 <- -2
epsilon_5 <- rnorm(length(time), mean = 0, sd = 1)
outcome5 <- beta0_5 + betatime_5*time + beta1_5 * sin(2 * pi * time / 12) + beta2_5 * cos(2 * pi * time / 12) + epsilon_5

par(mfrow = c(1, 1))
plot(time, outcome5, type = "l", ylab = "Outcome", xlab = "Time")
