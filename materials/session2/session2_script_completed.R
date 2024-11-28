###################################
######### LAB SESSION 1 ###########
#########    3/9/2021   ###########
###################################

# LOAD PACKAGES
library(tidyverse)
library(lubridate)

# SET THE DIRECTORY
setwd('github_projects/Syndromic_Surveillance_Training_Course/materials/session2/')

# LOAD AND VIEW DATA
facility <- readRDS("session2_data/example_facility_B.rds")

## View the first six observations in the facility dataset.
head(facility)

# SUMMARIZING THE DATA

## How many months are in the dataset?
nrow(facility)

## What is the date range in the dataset?
facility %>%
  summarize(min(date),
            max(date))

## What is the mean (average) number of monthly outpatient visits?
facility %>%
  summarize(mean(count))

## What is the maximum and minimum number of monthly outpatient visits?
facility %>%
  summarize(min(count),
            max(count))

# VISUALIZING THE DATA

# Create a histogram of the monthly outpatient visits counts
ggplot(facility,aes(count)) +
  geom_histogram(color="black",fill="lightblue",bins = 20) +
  theme_bw()

# Create a scatter plot of the counts over time.
ggplot(facility,aes(x=date,y=count)) +
  geom_point()

# In the above plot, connect the counts with a line. 
ggplot(facility,aes(x=date,y=count)) +
  geom_point() +
  geom_line() +
  theme_bw()

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
facility %>%
  arrange(date) %>%
  mutate(month = 1:n()) -> facility.new

# Fit a linear regression with an intercept and term for time.
fit.lm <- lm(count ~ month, data=facility.new)
summary(fit.lm)

# Plot the fitted values from the above linear regression.
ggplot(facility.new, aes(x = month, y = count)) +
  geom_point() +
  geom_line(aes(x = month, y = fit.lm$fitted.values)) +
  theme_bw()

# Plot the residuals from the above linear regression. 
ggplot(facility.new, aes(x = month, y = count)) +
  geom_point() +
  geom_line(aes(x = month, y = fit.lm$fitted.values)) +
  theme_bw()

# option 2
ggplot(facility.new, aes(x = month, y = count)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  theme_bw()

# Plot the residuals from the above linear regression.
ggplot(facility.new, aes(x = month, y = fit.lm$residuals)) +
  geom_point() +
geom_line() +
  theme_bw()

# Add a horizontal line at zero
ggplot(facility.new, aes(x = month, y = fit.lm$residuals)) +
  geom_point() +
  geom_line() +
  geom_hline(yintercept=0) +
  theme_bw()

## ACTIVITY ##

## 1. Fit a linear regression with a cubic term and plot the result.
fit.lm3 <- lm(count ~ month + I(month^2) + I(month^3), data=facility.new)
summary(fit.lm3)

## 2. Plot the points with the fitted quadratic model. 
ggplot(facility.new, aes(x = month, y = count)) +
  geom_point() +
  geom_line(aes(x = month, y = fit.lm3$fitted.values)) +
  theme_bw()

## 3. Plot the residuals with the fitted model.
ggplot(facility.new, aes(x = month, y = fit.lm3$residuals)) +
  geom_point() +
  geom_line() +
  geom_hline(yintercept=0) +
  theme_bw()

## 4. Repeat steps 1-3 for a linear regression using a sin and cosine term. Hint: You will need to create new variables in the data using.
facility.new %>%
  arrange(date) %>%
  mutate(time=1:n(),
         year=year(date)) %>%
  mutate(cos1=cos(2*pi*time/12),
         sin1=sin(2*pi*time/12)) -> facility.new2

fit.lm4 <- lm(count ~ month + cos1 + sin1, data=facility.new2)
summary(fit.lm4)
  
ggplot(facility.new2, aes(x = month, y = count)) +
  geom_point() +
  geom_line(aes(x = month, y = fit.lm4$fitted.values)) +
  theme_bw()
  
ggplot(facility.new2, aes(x = month, y = fit.lm4$residuals)) +
  geom_point() +
  geom_line() +
  geom_hline(yintercept=0) +
  theme_bw()
