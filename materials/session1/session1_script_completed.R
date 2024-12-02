###################################
######### LAB SESSION 1 ###########
#########    3/2/2021   ###########
###################################

# INSTALL AND LOAD PACKAGES
library(tidyverse)
library(lubridate)

# Find the current directory
getwd()

# LOAD AND VIEW DATA
## Load the outpatient visits ".rds" file
outpatient <- readRDS('materials/session1/session1_data/example_outpatient.rds')

## View the first six observations in the outaptient datasets
head(outpatient)

## View the variable types in the dataset.
str(outpatient)

## Load a .csv file in R and view the first six observations.
data_csv <- read_csv('materials/session1/session1_data/example_outpatient.csv')
head(data_csv)
str(data_csv)

# WORKING WITH DATA 
# FILTERING DATA 
## Filter the data to months that had greater than or equal to 8000 outpatient visits.
outpatient %>% 
  filter(outpatient_visits >= 8000)

## Filter the data to view outpatient visits in 2020.
outpatient %>% 
  filter(date >= '2020-01-01')

# DATA SUMMARIES
## What is the total number of outpatient visits in the dataset?
outpatient %>% 
  summarize(sum(outpatient_visits))
sum(outpatient$outpatient_visits)

## What is the mean (average) number of monthly outpatient visits?
outpatient %>%
  summarize(mean(outpatient_visits))
mean(outpatient$outpatient_visits)

## What is the minimum and maximum number of monthly outpatient visits?
outpatient %>% 
  summarize(min(outpatient_visits),
            max(outpatient_visits))

## How many missing months are there?
outpatient %>% 
  summarize(sum(is.na(outpatient_visits)))

# CREATING A NEW VARIABLE
## Create a new variable that indicates the month.
outpatient %>%
  mutate(month = month(date))

## Now, save the above as a new data frame (also known as a “tibble” in R)
outpatient %>%
  mutate(month = month(date)) -> outpatient2
# (or)
outpatient3 <- outpatient %>%
  mutate(month = month(date))
head(outpatient2)
# (or - not recommended)
outpatient4 = outpatient %>%
  mutate(month = month(date))

# SUMMARIZE DATA WITHIN GROUPINGS
## Over the time period, what is the average number of visits by month?
outpatient2 %>% 
  group_by(month) %>%
  summarize(mean(outpatient_visits))

# LAB ACITVITY
## How many months have less than 3000 visits?
outpatient %>%
  filter(outpatient_visits > 3000)
  
## How many outpatient visits occurred in March 2019?
outpatient %>%
  filter(date == "2019-03-01")

## How many total outpatient visits occurred in 2016?
outpatient %>%
  filter(date >= "2016-01-01" & date <= "2016-12-01") %>%
  summarize(sum(outpatient_visits))
  
## Load in the example_kmc.rds dataset
kmc <- readRDS("materials/session1/session1_data/example_kmc.rds")

## View the KMC dataset.
head(kmc)

## How many missing months are in this dataset?
kmc %>%
  summarize(sum(is.na(indicator_count_kangaroo)))

## What is the mean (average) number of monthly Kangaroo Mother Care?
kmc %>%
  summarize(mean(indicator_count_kangaroo,na.rm=TRUE))
