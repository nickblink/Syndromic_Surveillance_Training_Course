###################################
######### LAB SESSION 1 ###########
###################################

# write anything I want.

# INSTALL AND LOAD PACKAGES
library(tidyverse)
library(lubridate)

# set the working directory

# navigate to the set working directory option in "files".

# LOAD AND VIEW DATA
## Load the outpatient visits ".rds" file
outpatient <- readRDS('session1_data/example_outpatient.rds')

## View the first six observations in the outpatient datasets
head(outpatient)
view(outpatient)

## View the variable types in the dataset.
str(outpatient)

## Load a .csv file in R and view the first six observations. Does anything look different about this data frame?
outpatient_csv <- read_csv('session1_data/example_outpatient.csv')

str(outpatient_csv)

# WORKING WITH DATA 
# FILTERING DATA 
## Filter the data to months that had greater than or equal to 8000 outpatient visits.
outpatient %>%
  filter(outpatient_visits >= 8000)

## Filter the data to view outpatient visits in 2020.
outpatient %>%
  filter(date >= '2020-01-01' & date <= '2020-12-31')

# DATA SUMMARIES
## What is the total number of outpatient visits in the dataset?

## What is the mean (average) number of monthly outpatient visits?

## What is the minimum and maximum number of monthly outpatient visits?

## How many missing months are there?

# CREATING A NEW VARIABLE
## Create a new variable that indicates the month.

## Now, save the above as a new data frame (also known as a “tibble” in R)

# SUMMARIZE DATA WITHIN GROUPINGS
## Over the time period, what is the average number of visits by month?

# LAB ACITVITY
## How many months have less than 3000 visits?
  
## How many outpatient visits occurred in March 2019?
  
## How many total outpatient visits occurred in 2016?
  
## Load in the example_kmc.rds dataset

## View the KMC dataset.

## How many missing months are in this dataset?
  
## What is the mean (average) number of monthly Kangaroo Mother Care?


### Looking for more practice? 

# Unit 1 gives some practice code for the tidyverse: https://campus.datacamp.com/courses/introduction-to-the-tidyverse/data-wrangling-1?ex=1 
# Chapter 4 - 7 of this textbook goes over tidyverse basics: https://bookdown.org/yih_huynh/Guide-to-R-Book/tidyverse.html 
