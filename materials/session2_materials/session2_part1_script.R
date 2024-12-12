###################################
#### LAB SESSION 2 part 1 #########
###################################

# INSTALL AND LOAD PACKAGES
library(tidyverse)

# Find the current directory
setwd("~/github_projects/Syndromic_Surveillance_Training_Course/materials")

# LOAD AND VIEW DATA
## Load the outpatient visits ".rds" file from lab 1.
outpatient <- readRDS('session1/session1_data/example_outpatient.rds')


## View the first six observations in the outaptient datasets.

# SUMMARIZING THE DATA 

## How many months are in the dataset?

## What is the date range in the dataset?

## What is the mean (average) number of monthly outpatient visits?

## What is the maximum and minimum number of monthly outpatient visits?

# VISUALIZING THE DATA

# Create a histogram of the monthly outpatient visits outpatient_visits
ggplot(outpatient, aes(outpatient_visits)) + 
  geom_histogram(color = 'black', fill = 'blue', bins = 10) + 
  theme_bw()

# Create a scatter plot of the outpatient_visits over time.
ggplot(outpatient, aes(x = date, y = outpatient_visits)) + 
  geom_point()

# In the above plot, connect the outpatient_visits with a line. 
ggplot(outpatient, aes(x = date, y = outpatient_visits)) + 
  geom_point() +
  geom_line()

# ACTIVITY: Add aesthetics to the above plot by changing the various inputs 
ggplot(outpatient,aes(x=date,y=outpatient_visits)) + 
  geom_point(color="black",size=2,shape=16) + 
  geom_line(color="black",size=.5,linetype="solid") + 
  ylab("outpatient_visits") + 
  xlab("date") + 
  ggtitle("") +
  theme_bw() 


# Linear regression and plotting output.
## Create a new time variable for each month.

## Plot the values of the data.

## ACTIVITY: 
# (1) For the linear regression equation outpatient_visits = B0 + B1*month + e, write down your guess for B0 and B1 that best fit the data (no code)

# (2) Using the geom_abline function, change the intercept and slope values to guess the best fitting line. How close are the intercept and slope values to what you guessed in (1)?
ggplot(outpatient.new, aes(x=month,y=outpatient_visits)) +
  geom_point() +
  geom_abline(intercept = 4000, slope = 10, col = 'red') + 
  theme_bw()

# Fit a linear regression with an intercept and term for time.
# R automatically includes an intercept in the model.

# Look at the coefficient results of the model. How close were your line coefficients to this one?

# Look at the in-depth results of the model.

# Plot the fitted values from the above linear regression.

# Using the regression formula outpatient = B0 + B1*month, predict what the outpatient value will be in month 61 (2021-01-01).

# Now, run the model using "date" as the x variable instead of month.

# Print the results. Are the coefficients the same?

# Plot the results. Does this look the same?

# Can you explain why the coefficients and the plots from these two models are the same/different?

