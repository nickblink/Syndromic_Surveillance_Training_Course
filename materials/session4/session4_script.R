###################################
######### LAB SESSION 4 ###########
#########    3/23/2021   ##########
###################################

# As always, remember to set your working directory first!

# LOAD PACKAGES
library(tidyverse)
library(lubridate)

##### LOAD AND VIEW DATA #####
# Load the example Facility ARI ".rds" file and save it as a data frame called "data". 
# Reminder- an ".rds" file is an R object and is the best way to store data that will be used in R.

# View the first six observations of the "data" dataset



##### DATA CLEANING #####
# Rename the indicator variable columns to "ari" and "outpatient", and save this as a new data frame. 
# This will make them easier to work with (in R, we generally want to avoid leaving spaces when we name variables).

# How many facilities are in the dataset and what are the facility names? Do you notice anything strange?

# Fix the mistake in the facility name. Save as a new data frame and verify that the edit worked.



##### MISSING VALUES #####
# How many months does each facility have data for?

# What is the average (mean) monthly number of ARI cases in each facility?

# How many months are missing for each facility?


##### ACTIVITY 1: SUMMARY STATISTICS AND PLOTTING #####

## 1. Now that our data is clean, calculate the following summary statistics for each facility: 
# median, minimum, maximum, 25th percentile, and 75th percentile.
# Remember to specify *na.rm=TRUE* for each summary statistic function (this will remove the empty cells).
                                                                                          



## 2. Using the ggplot function, plot the number of ARI cases by month from a facility of your choice.
#Bonus: How would you plot all four facilities together?




## 3. Create a boxplot for the number of ARI cases from a facility of your choice.




#### MORE ADVANCED PLOTTING ####

# Plot the number of ARI cases by month for all four facilities using the *facet_wrap* function. Are there any outliers in these plots?

# There is one known data error in the plot: the value for March 2017 in Clinic 2 should be 20 (not 2000). Fix this and save as a new data frame.

# With the updated dataset, plot the number of ARI cases by month for all four facilities using the *facet_wrap* function again. Did the fix work?


#### ACTIVITY 2: IDENTIFYING OUTLIERS ####

## 1. Plot a boxplot for the number of ARI cases overall for each facility. You can either use the *facet_wrap* function or do it all on one plot.




## 2. Use Tukey's rule in the dataset to identify the outlier months in each facility for ARI cases. 
 # You should know the facility name, month, and number of ARI cases for each outlier.
 # You will need to compute $Q25$ (25th percentile), $Q75$ (75th percentile), and the interquartile range (IQR), which is defined as the difference between the 75th percentile and 25th percentile ($IQR = Q75-Q25$). 
 # You can do this all in one tidyverse code chunk or you can split it into separate code chunks! 




## 3. Recreate the number of ARI cases by month for all four facilities plot from earlier in the lab session, but add coloring for the points that were flagged as outliers. 
 # You can use the *scale_color_manual()*, as part of the ggplot() function, to change the point colors. 
