# -------- Testing


# Reading Data
btc = read_cryptocurrency_data("bitcoin")
data_names = names(btc)[-1]

y = target_increment_x_percent_in_n_periods(btc$Close , x = 5 , n =  2)
btc$y = y


rf = randomForest::randomForest(y~., data = btc[1:(nrow(btc)-2),])




head(btc)

# Pipeline

# Prepare data

# Split data for training, evaluation, and test

# Test new instances