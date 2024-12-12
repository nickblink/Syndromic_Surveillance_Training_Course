###################################
######### LAB SESSION 5 ###########
#########    3/30/2021   ##########
###################################

# As always, remember to set your working directory to the session5_03-30 folder!

# LOAD PACKAGES
library(tidyverse)
library(lubridate)

##### LOAD AND VIEW DATA #####
# Load the "facility_ari_final.rds" file and save it as a data frame called "facility". 

# View the first six observations of the "data" dataset


##### PART 1. DATA CLEANING ##### 

# What is mean, median, min, max monthly ARI count in the dataset?
  
# Create a scatterplot of the date and actue respiratory infection count. 

# Is there a seasonality or trend in the scatterplot?

# Are there any potential outliers? If so, what do you think is causing this outlier?

# Fill in the outlier value with 1004 and save the dataset as "facility_new"

## PART 2. FIT TIME SERIES MODEL TO BASELINE DATA

# Look at the scatterplot you created in Part 1. What terms do you need to include
# in your model to capture the pattern. Create those new variables now and rename 
# your dataset "facility_all"


# For COVID-19 syndromic surveillance, we typically choose a baseline period 
# through December 31, 2019. Choose your baseline period and create a dataset 
# called "facility_baseline". 


# Using the code from previous labs (Session 2, Session 3), fit a model to the
# baseline data only. 


# Plot the fitted (predicted) values and prediction interval with the observed 
# baseline data. How does it look? 


# Check the residuals by creating a residual plot and autocorrelation function plots.
# How does it look?


# Repeat the above steps until you have a model fit you like! 


# PART 3. CALCULATE DEVIATIONS IN THE EVALUATION PERIOD

# You will first need to calculate the predicted (fitted) values and 
# prediction intervals in the evaluation period.


# Calculate deviation in two ways: (1) the difference between observed and predicted 
# and (2) the proportion difference between observed and predicted. 
# Are the counts higher or lower than expected by month? 
# Do they exceed the prediction intervals?


# Create the classic time series plot with an observed line, predicted line, 
# and prediction intervals for the entire time period. 
# You should also include a vertical line at the start of the evaluation period. 


## PART 4. COMMUNICATE RESULTS (DATA VIZ!)

# Now, modify the plot to best communicate the results to a clinician. 
# Feel free to get creative with plot style, colors, labeling, etc.! 
# This is a great reference: https://r4ds.had.co.nz/data-visualisation.html
# Here is a ggplot2 cheatsheet: https://www.rstudio.com/wp-content/uploads/2015/03/ggplot2-cheatsheet.pdf


