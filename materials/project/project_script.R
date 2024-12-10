### In this script you will run your project.
### The goal of your project is answer a question (or multiple) related to this HMIS dataset. The end goal is to have a 5-10 minute presentation on your research question, your results, and a plot. You should have a clear research question, such as ...
#
# How do the numbers of fully immunized fixed compare to outreach?
# How have immunization numbers changed over the years?
# How has data completeness changed over the years?

install.packages('readxl')
library(tidyverse)
library(readxl)

# read in the data
df <- read_excel('project/EPI Data.xls')

# rename the columns to be easier to work with
colnames(df) <- c('dataname', 'org', 'Y2020','Y2021','Y2021','Y2023')
  
  