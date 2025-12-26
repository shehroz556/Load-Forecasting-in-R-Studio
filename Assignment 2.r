#setwd("C:/Users/Shehroz Jawad Khan/Desktop/LEI Internship/Task3")

library(psych) 

library(e1071)

library(forecast) 

auto_mpg = read.csv("auto-mpg.csv") 

str(auto_mpg)

auto_mpg = auto_mpg[auto_mpg$horsepower != "?",] 

auto_mpg$horsepower = as.numeric(auto_mpg$horsepower)     

auto_mpg = auto_mpg[,-8] 

summary(auto_mpg)

pairs.panels(auto_mpg[,-c(7,8)]) 

smp_size <- floor(0.80 * nrow(auto_mpg))

train_ind <- sample(seq_len(nrow(auto_mpg)), size = smp_size) 

train_auto <- auto_mpg[train_ind, ] 

test_auto <- auto_mpg[-train_ind, ] 

svm_model = svm(mpg~horsepower+weight+acceleration, data = 
                  train_auto, type = "eps-regression", kernel = "polynomial", degree = 3) 
svm_model 

test_auto$mpg_predicted = predict(svm_model, test_auto)

accuracy(test_auto$mpg, test_auto$mpg_predicted) 


svm_model = svm(mpg~horsepower+weight+acceleration, data = 
                  train_auto, type = "eps-regression", kernel = "sigmoid") 
svm_model 

test_auto$mpg_predicted = predict(svm_model, test_auto)

accuracy(test_auto$mpg, test_auto$mpg_predicted) 



svm_model = svm(mpg~horsepower+weight+acceleration, data = 
                  train_auto, type = "eps-regression", kernel = "radial") 
svm_model 

test_auto$mpg_predicted = predict(svm_model, test_auto)

accuracy(test_auto$mpg, test_auto$mpg_predicted) 

library(neuralnet) 


max = apply(auto_mpg[,-c(7,8)] ,2, max) 
min = apply(auto_mpg[,-c(7,8)],2, min) 
scaled = as.data.frame(scale(auto_mpg[,-c(7,8)],center =min,scale =max - min)) 


smp_size <- floor(0.80 *nrow (scaled)) 
train_ind <- sample(seq_len(nrow(scaled)),size =smp_size) 
train <- scaled[train_ind, ] 
test <- scaled[ -train_ind, ] 

ANN_model = neuralnet(mpg~horsepower+weight+acceleration, data = 
                         train, hidden = c(3,10,4),linear.output =TRUE) 


test$mpg_predicted = predict(ANN_model, test)

accuracy(test$mpg, test$mpg_predicted) 

