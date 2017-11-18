library('caret')
library('kernlab')

data(spam)
View(spam)

#Partition data of spam type in which 75% for training and 25% for testing
inTrain <- createDataPartition(y = spam$type, p=0.75, list=FALSE)



training <- spam[inTrain,]
dim(training)
