library(shiny)
library(shinyjs)
library(readr)
library(magrittr)
library(dplyr)
library(xgboost)
library(DT)
library(pROC)
library(rpart)
library(rpart.plot)
library(caret)
library(e1071)
library(stringi)
library(corrplot)



# kaggle_data <- read_csv(file.path("data", "creditcard.csv.gz"), col_names = T)
# colnames(kaggle_data) <- stringi::stri_trans_tolower(colnames(kaggle_data))
print("start reading")
credit_c <- read.csv("E:/Rproject/creditcard/creditcard.csv")
credit_c$Amount = scale(credit_c$Amount)
newData = credit_c[, -c(1)]
library(caTools)
set.seed(123)
data_sample = sample.split(newData$Class, SplitRatio=0.75)
train_data = subset(newData, data_sample== TRUE)
test_data = subset(newData, data_sample==FALSE)
print("stop reading")
# 
# rows <- nrow(kaggle_data)
# kaggle_data$id <- 1:rows
