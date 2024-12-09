
months <- 1:60
outpatient_visits <- 2000 + 15*months + rnorm(60, 0, 300)

df <- data.frame(months = months, 
                 outpatient_visits = outpatient_visits)

