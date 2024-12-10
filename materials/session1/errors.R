library(tidyverse)

# setwd('github_projects/Syndromic_Surveillance_Training_Course/')

outpatient <- readRDS('session1_data/example_outpatient.rds')

outpatient %>%
  filter(outpatient_visits > 4000)

outpatient %>% 
  filter(date >= '2020-01-01')

outpatient %>% 
  filter(date >= "2020-01-01")

str(outpatient)
