# PARTITIONING DATASETS


# Read the dataset
dataset <- read.csv(paste(getwd(),"/dataset2/green.csv", sep=''), header=FALSE)

# To make sure character variables are factor type data
dataset <- mutate_if(dataset, is.character, as.factor)

# Setting seed for reproducibility
set.seed(1234)

# Random splitting of iris data as train and test datasets
index <- createDataPartition(dataset$class, p=0.7, list=FALSE)
trainData = iris[index,]
testData = iris[-index,]

# TRAINING MODELS

#build knn model
model_knn = train(trainData[1:4], trainData$class, method="knn")