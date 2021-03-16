# SVM using CAret
library(tidyverse)
library(caret)


# Load the data
#install.packages("mlbench")
data("PimaIndiansDiabetes2",package="mlbench")
pima.data<-na.omit(PimaIndiansDiabetes2)

# Inspect the data
sample_n(pima.data,3)


# Fit the Model 1
train_control<-trainControl(method = "repeatedcv",number=10,repeats="3")
train_control
svm1<-train(diabetes~.,data = pima.data,method="svmLinear",trcontrol=train_control,preProcess=c("center","scale"))
svm1


#FIT MODEL 2


svm2 <- train(diabetes ~., data = pima.data, method = "svmLinear",trControl = train_control, preProcess= c("center", "scale"), tuneGrid = expand.grid(C = seq(0,2, length = 20)))
svm2
plot(svm2)
























