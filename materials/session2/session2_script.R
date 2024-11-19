###################################
######### LAB SESSION 1 ###########
#########    3/9/2021   ###########
###################################

# LOAD PACKAGES
library(tidyverse)
library(lubridate)

# LOAD AND VIEW DATA

## Load the Facility B visits ".rds" file and save as "facility"

## View the first six observations in the facility dataset.

# SUMMARIZING THE DATA

## How many months are in the dataset?

## What is the date range in the dataset?

## What is the mean (average) number of monthly outpatient visits?

## What is the maximum and minimum number of monthly outpatient visits?

# VISUALIZING THE DATA

# Create a histogram of the monthly outpatient visits counts

# Create a scatter plot of the counts over time.

# In the above plot, connect the counts with a line. 

# ACTIVITY: Add aesthetics to the above plot by changing the various inputs 
ggplot(facility,aes(x=date,y=count)) + 
  geom_point(color="black",size=2,shape=16) + 
  geom_line(color="black",size=.5,linetype="solid") + 
  ylab("count") + 
  xlab("date") + 
  ggtitle("") +
  theme_bw() 

## LINEAR REGRESSION AND PLOTTING OUTPUT

# Create a new variable for each month.

# Fit a linear regression with an intercept and term for time.

# Plot the fitted values from the above linear regression.

# Plot the residuals from the above linear regression. 

# Add a horizontal line at zero

## ACTIVITY ##

## 1. Fit a linear regression with a cubic term and plot the result.

## 2. Plot the points with the fitted quadratic model. 

## 3. Plot the residuals with a horizontal line at zero. Is there evidence of residual correlation?


  
  