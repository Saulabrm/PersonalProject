# Modeling -----



## Caret Model

xgb_tuning <- function(){
  # xgbGrid <- expand.grid(
  #   nrounds = 200,
  #   max_depth = c(6, 8, 10),
  #   eta = c(0.001, 0.003, 0.01),
  #   gamma = 1,
  #   colsample_bytree = 0.5,
  #   min_child_weight = 6
  # )
  # 
  # xgbTrControl <- trainControl(
  #   method = "repeatedcv",
  #   number = 5,
  #   repeats = 2,
  #   returnData = FALSE,
  #   classProbs = TRUE,
  #   summaryFunction = multiClassSummary
  # )
}

function_to_be_defined = function(){param = data.frame(nrounds=c(100), max_depth = c(2),eta =c(0.3),gamma=c(0),
                   colsample_bytree=c(0.8),min_child_weight=c(1),subsample=c(1))  

fit.xgbTree <- train(y ~ ., data = btc[1:(nrow(btc)-2),], 
                     method="xgbTree",
                     metric="Accuracy", 
                     trControl=trainControl(method="none", seeds= 1992),
                     tuneGrid=param)
}
# TODO:
# Put it all in functions...
# Try Cross Validation, expanding grid for best parameters
# Evaluation Metric to FScore, or Precision.
