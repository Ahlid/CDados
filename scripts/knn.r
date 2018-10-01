<- read.csv(paste(getwd(),"/dataset2/green.csv", sep=''), header=FALSE)
dataset <- mutate_if(iris, is.character, as.factor)
set.seed(1234)