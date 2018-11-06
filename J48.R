install.packages("e1071")
library(e1071)

trainData <- aps_failure_training_set
testData <- aps_failure_test_set

J48tree <- J48(class~., trainData)
predictions <- predict(J48tree, newdata = testData)


confusionMatrix(predictions, testData$class)