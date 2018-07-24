## ---- Target Variable

# Idea is to enter the data, the variable to become a target and it outputs a target variable

# TODO/THINK: Should it output the name of the new variable? or should be just have a standard name such as "y"

target_increment_x_percent_in_n_periods <- function(target_variable_vector , x = 5 , n =  1){
  # target_variable_vector = data$Close
  # x - is the percentage change
  # n - the amount of periods/candles into the future.
  
  x_percentage <- x / 100
  
  lagged_target <- dplyr::lag(target_variable_vector, n = n)
  
  percentage_change <- ((lagged_target - target_variable_vector) / target_variable_vector) * 100
  
  target = percentage_change >= x
  
  target
  
}

# TODO: Define so we can have multiple target functions.
define_target_increments <- function(){}



# Testing
# testing_target_increment_function <-function(){
#   data = read_crypto_currency_data("bitcoin")
#   table(target_increment_x_percent_in_n_periods(data$Close , x = 5 , n =  2))
# }

