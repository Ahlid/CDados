library(mlbench)
# load the trainData
trainData <- aps_failure_training_set
# summarize trainData
summary(trainData)
# calculate the pre-process parameters from the trainData
preprocessParams <- preProcess(trainData, method=c("center", "scale", "pca"))
# transform the trainData using the parameters
transformed <- predict(preprocessParams, trainData)
# summarize the transformed trainData
summary(transformed)