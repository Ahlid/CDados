#KNN Model

trControl <- trainControl(method = "repeatedcv",
                          number = 10,
                          repeats = 3)

set.seed(222)

#fit <- train(class ~.,
#             data = trainData, 
#             method = 'knn',
#             tuneGrid = expand.grid(k = 1:2),
#             tuneLength = 20, 
#             trControl = trControl,
#             preProc = c("center", "scale"))

#Model

#fit

#Naive Bayes
#install.packages("e1071")
#library(e1071)
#library("ROSE")
data_balanced_over <- ovun.sample(class ~ ., data = trainData, method = "over",N = 118000)$data
table(data_balanced_over$class)
 
Naive_Bayes_Model = naiveBayes(class ~., data=data_balanced_over)

NB_Predictions=predict(Naive_Bayes_Model,testData)

#table(NB_Predictions)
#20% accu !!!!!!
confusionMatrix(NB_Predictions,testData$class)





