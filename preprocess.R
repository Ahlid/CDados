meaninglessAttributes <- nearZeroVar(trainData, names = FALSE,allowParallel = TRUE)
meaninglessAttributes <- meaninglessAttributes[2:30]

#remove meaningless attributes from dataset
for (i in 1:length(meaninglessAttributes)){
  trainData[,meaninglessAttributes[i]] <- NULL 
}
