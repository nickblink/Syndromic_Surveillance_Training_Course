###################################
######### LAB SESSION 3 ###########
#########    3/16/2021   ##########
###################################

# Always remember to set your working directory first

# LOAD PACKAGES
library(tidyverse)
library(lubridate)
library(car)

##### STEP 1 #####
## Choose relevant indicator and visualize data

# Load monthly ARI cases from an ".rds" file and save as "facility"

# View the first six observations of the "facility" dataset

# What is the date range in the dataset?

# Create a scatterplot of the date and actue respiratory infection count.


##### STEP 2 #####
## Choose the baseline and evaluation period

# The evaluation period will start January 1, 2020. Include a line on the plot.


##### STEP 3 #####
## Fit time series model to baseline period

# Modify the "facility" dataset to include: time, year, one cosine, and one sine term.

# Fit a model with only a linear time term on the baseline period data. Call this fit1.


##### STEP 4 #####
## Using the model from Step 3, calculate deviations from expected in the evaluation period.

# Calculate the difference between observed and expected. Do you notice a pattern?
  
# In order to compare the deviations across each month, standardize by the predicted values.


##### Step 5 #####
## Produce interpretable visualizations.

# Calculate the 95% prediction intervals.

# Plot the observed values, predicted line, and 95% prediction intervals. 
# Hint: 
# You will need to pull the date and observed counts into the prediction interval data frame.


##### ACTIVITY #####

## 1. Repeat Steps 3-5 above with a model including the following terms: year, cosine, and sine term (created above). Call this fit2.
                                                                                          
# Fit the model

# Deviations

# 95% Predicted intervals


## 2. Compare the ACF plots between fit1 and fit2. Which looks better?
