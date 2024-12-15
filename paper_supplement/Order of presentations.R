set.seed(10)

teams <- c('Ernest + Evelyn',
           'Caselia + Glasco',
           'Jerome + Joshua',
           'Robert + Emmanuel',
           'Jeffrey + Chuchu + Luke')

presentation_order <- as.data.frame(sample(teams))

print('the order of the presentations is...')

print(presentation_order)
