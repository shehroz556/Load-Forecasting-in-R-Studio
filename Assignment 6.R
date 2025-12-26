library(plotly)
library(reshape)
library(GGally)
library(shinycssloaders)
library(shiny)
library(ggplot2)
library(forecast)
library(e1071)
library(neuralnet)
library(caret)
library(readr)
library(lattice)

Houses <- read_csv("C:/Users/Shehroz Jawad Khan/Desktop/LEI Internship/Task7/Houses.csv")

Houses$Date_Time = as.POSIXct(Houses$Date_Time)

Houses$X <- NULL

House26 <- Houses[,c(1,7)]

colnames(House26) = c("Time", "hourly_load")

plot(acf(Houses$House26, lag.max = 170), main = "ACF of House 26")

House26 <- rbind(House26,data.frame(Time = rep(NA, 24),hourly_load =rep(NA,24)))

House26$Time <- seq.POSIXt(from = as.POSIXct("2018-06-01 00:00:00 PKT"),to = as.POSIXct("2019-06-01 23:00:00 PKT"), by = "hour")

House26$Hour_lag = c(rep(NA,1),House26$hourly_load[1:(nrow(House26)-1)])

House26$Daily_lag = c(rep(NA,24),House26$hourly_load[1:(nrow(House26)-24)])

House26$Week_lag = c(rep(NA,168),House26$hourly_load[1:(nrow(House26)-168)])

house26_plot =  melt(House26[,-1])

house26_plot$Time = House26$Time

ggplot(house26_plot, aes(x = Time))+geom_line(aes(y = value, color = variable))

ggpairs(House26[,-1])

House26_table = House26[(nrow(House26)-23): nrow(House26),]

House26_table$Time <- strftime(House26_table$Time, format="%Y-%m-%d %H:%M:%S")

House26_table

############################################################################

#Create Linear Regression, SVR and ANN models using Daily_lag as the independent variable for each of the 10 Houses.

#Firstly, we will isolate all the houses

House14 <- Houses[,c(1,2)]
House15 <- Houses[,c(1,3)]
House18 <- Houses[,c(1,4)]
House2 <- Houses[,c(1,5)]
House21 <- Houses[,c(1,6)]
House39 <- Houses[,c(1,8)]
House4 <- Houses[,c(1,9)]
House9 <- Houses[,c(1,10)]

#Now, we will change the variable names for all the houses
colnames(House14) = c("Time", "hourly_load")
colnames(House15) = c("Time", "hourly_load")
colnames(House18) = c("Time", "hourly_load")
colnames(House2) = c("Time", "hourly_load")
colnames(House21) = c("Time", "hourly_load")
colnames(House39) = c("Time", "hourly_load")
colnames(House4) = c("Time", "hourly_load")
colnames(House9) = c("Time", "hourly_load")

#Now, we want to forecast for 1st June,2019 so we will create 24 extra rows for each house
House14 <- rbind(House14,data.frame(Time = rep(NA, 24),hourly_load =rep(NA,24)))
House14$Time <- seq.POSIXt(from = as.POSIXct("2018-06-01 00:00:00 PKT"),to = as.POSIXct("2019-06-01 23:00:00 PKT"), by = "hour")

House15 <- rbind(House15,data.frame(Time = rep(NA, 24),hourly_load =rep(NA,24)))
House15$Time <- seq.POSIXt(from = as.POSIXct("2018-06-01 00:00:00 PKT"),to = as.POSIXct("2019-06-01 23:00:00 PKT"), by = "hour")

House18 <- rbind(House18,data.frame(Time = rep(NA, 24),hourly_load =rep(NA,24)))
House18$Time <- seq.POSIXt(from = as.POSIXct("2018-06-01 00:00:00 PKT"),to = as.POSIXct("2019-06-01 23:00:00 PKT"), by = "hour")

House2 <- rbind(House2,data.frame(Time = rep(NA, 24),hourly_load =rep(NA,24)))
House2$Time <- seq.POSIXt(from = as.POSIXct("2018-06-01 00:00:00 PKT"),to = as.POSIXct("2019-06-01 23:00:00 PKT"), by = "hour")

House21 <- rbind(House21,data.frame(Time = rep(NA, 24),hourly_load =rep(NA,24)))
House21$Time <- seq.POSIXt(from = as.POSIXct("2018-06-01 00:00:00 PKT"),to = as.POSIXct("2019-06-01 23:00:00 PKT"), by = "hour")

House39 <- rbind(House39,data.frame(Time = rep(NA, 24),hourly_load =rep(NA,24)))
House39$Time <- seq.POSIXt(from = as.POSIXct("2018-06-01 00:00:00 PKT"),to = as.POSIXct("2019-06-01 23:00:00 PKT"), by = "hour")

House4 <- rbind(House4,data.frame(Time = rep(NA, 24),hourly_load =rep(NA,24)))
House4$Time <- seq.POSIXt(from = as.POSIXct("2018-06-01 00:00:00 PKT"),to = as.POSIXct("2019-06-01 23:00:00 PKT"), by = "hour")

House9 <- rbind(House9,data.frame(Time = rep(NA, 24),hourly_load =rep(NA,24)))
House9$Time <- seq.POSIXt(from = as.POSIXct("2018-06-01 00:00:00 PKT"),to = as.POSIXct("2019-06-01 23:00:00 PKT"), by = "hour")

#Now, we will create hourly lags, daily lags, and weekly lags for all houses.
House14$Hour_lag = c(rep(NA,1),House14$hourly_load[1:(nrow(House14)-1)])
House14$Daily_lag = c(rep(NA,24),House14$hourly_load[1:(nrow(House14)-24)])
House14$Week_lag = c(rep(NA,168),House14$hourly_load[1:(nrow(House14)-168)])

House15$Hour_lag = c(rep(NA,1),House15$hourly_load[1:(nrow(House15)-1)])
House15$Daily_lag = c(rep(NA,24),House15$hourly_load[1:(nrow(House15)-24)])
House15$Week_lag = c(rep(NA,168),House15$hourly_load[1:(nrow(House15)-168)])

House18$Hour_lag = c(rep(NA,1),House18$hourly_load[1:(nrow(House18)-1)])
House18$Daily_lag = c(rep(NA,24),House18$hourly_load[1:(nrow(House18)-24)])
House18$Week_lag = c(rep(NA,168),House18$hourly_load[1:(nrow(House18)-168)])

House2$Hour_lag = c(rep(NA,1),House2$hourly_load[1:(nrow(House2)-1)])
House2$Daily_lag = c(rep(NA,24),House2$hourly_load[1:(nrow(House2)-24)])
House2$Week_lag = c(rep(NA,168),House2$hourly_load[1:(nrow(House2)-168)])

House21$Hour_lag = c(rep(NA,1),House21$hourly_load[1:(nrow(House21)-1)])
House21$Daily_lag = c(rep(NA,24),House21$hourly_load[1:(nrow(House21)-24)])
House21$Week_lag = c(rep(NA,168),House21$hourly_load[1:(nrow(House21)-168)])

House39$Hour_lag = c(rep(NA,1),House39$hourly_load[1:(nrow(House39)-1)])
House39$Daily_lag = c(rep(NA,24),House39$hourly_load[1:(nrow(House39)-24)])
House39$Week_lag = c(rep(NA,168),House39$hourly_load[1:(nrow(House39)-168)])

House4$Hour_lag = c(rep(NA,1),House4$hourly_load[1:(nrow(House4)-1)])
House4$Daily_lag = c(rep(NA,24),House4$hourly_load[1:(nrow(House4)-24)])
House4$Week_lag = c(rep(NA,168),House4$hourly_load[1:(nrow(House4)-168)])

House9$Hour_lag = c(rep(NA,1),House9$hourly_load[1:(nrow(House9)-1)])
House9$Daily_lag = c(rep(NA,24),House9$hourly_load[1:(nrow(House9)-24)])
House9$Week_lag = c(rep(NA,168),House9$hourly_load[1:(nrow(House9)-168)])

#Now, we will create separate data frames, for each house, for the day 1st June 2019
House14_table = House14[(nrow(House14)-23): nrow(House14),]
House14_table$Time <- strftime(House14_table$Time, format="%Y-%m-%d %H:%M:%S")
House14_table

House15_table = House15[(nrow(House15)-23): nrow(House15),]
House15_table$Time <- strftime(House15_table$Time, format="%Y-%m-%d %H:%M:%S")
House15_table

House18_table = House18[(nrow(House18)-23): nrow(House18),]
House18_table$Time <- strftime(House18_table$Time, format="%Y-%m-%d %H:%M:%S")
House18_table

House2_table = House2[(nrow(House2)-23): nrow(House2),]
House2_table$Time <- strftime(House2_table$Time, format="%Y-%m-%d %H:%M:%S")
House2_table

House21_table = House21[(nrow(House21)-23): nrow(House21),]
House21_table$Time <- strftime(House21_table$Time, format="%Y-%m-%d %H:%M:%S")
House21_table

House39_table = House39[(nrow(House39)-23): nrow(House39),]
House39_table$Time <- strftime(House39_table$Time, format="%Y-%m-%d %H:%M:%S")
House39_table

House4_table = House4[(nrow(House4)-23): nrow(House4),]
House4_table$Time <- strftime(House4_table$Time, format="%Y-%m-%d %H:%M:%S")
House4_table

House9_table = House9[(nrow(House9)-23): nrow(House9),]
House9_table$Time <- strftime(House9_table$Time, format="%Y-%m-%d %H:%M:%S")
House9_table

#We will create a clone copy of data frame concerning 1st June 2019 for all houses. This is to differentiate our models when will transport our predicted values to our data frame. 
House14_table_LM_Dailylag <- House14_table
House15_table_LM_Dailylag <- House15_table
House18_table_LM_Dailylag <- House18_table
House2_table_LM_Dailylag <- House2_table
House21_table_LM_Dailylag <- House21_table
House26_table_LM_Dailylag <- House26_table
House39_table_LM_Dailylag <- House39_table
House4_table_LM_Dailylag <- House4_table
House9_table_LM_Dailylag <- House9_table

House14_table_SVM_Dailylag <- House14_table
House15_table_SVM_Dailylag <- House15_table
House18_table_SVM_Dailylag <- House18_table
House2_table_SVM_Dailylag <- House2_table
House21_table_SVM_Dailylag <- House21_table
House26_table_SVM_Dailylag <- House26_table
House39_table_SVM_Dailylag <- House39_table
House4_table_SVM_Dailylag <- House4_table
House9_table_SVM_Dailylag <- House9_table

House14_table_ANN_Dailylag <- House14_table
House15_table_ANN_Dailylag <- House15_table
House18_table_ANN_Dailylag <- House18_table
House2_table_ANN_Dailylag <- House2_table
House21_table_ANN_Dailylag <- House21_table
House26_table_ANN_Dailylag <- House26_table
House39_table_ANN_Dailylag <- House39_table
House4_table_ANN_Dailylag <- House4_table
House9_table_ANN_Dailylag <- House9_table

House14_table_LM_Weeklylag <- House14_table
House15_table_LM_Weeklylag <- House15_table
House18_table_LM_Weeklylag <- House18_table
House2_table_LM_Weeklylag <- House2_table
House21_table_LM_Weeklylag <- House21_table
House26_table_LM_Weeklylag <- House26_table
House39_table_LM_Weeklylag <- House39_table
House4_table_LM_Weeklylag <- House4_table
House9_table_LM_Weeklylag <- House9_table

House14_table_SVM_Weeklylag <- House14_table
House15_table_SVM_Weeklylag <- House15_table
House18_table_SVM_Weeklylag <- House18_table
House2_table_SVM_Weeklylag <- House2_table
House21_table_SVM_Weeklylag <- House21_table
House26_table_SVM_Weeklylag <- House26_table
House39_table_SVM_Weeklylag <- House39_table
House4_table_SVM_Weeklylag <- House4_table
House9_table_SVM_Weeklylag <- House9_table

House14_table_ANN_Weeklylag <- House14_table
House15_table_ANN_Weeklylag <- House15_table
House18_table_ANN_Weeklylag <- House18_table
House2_table_ANN_Weeklylag <- House2_table
House21_table_ANN_Weeklylag <- House21_table
House26_table_ANN_Weeklylag <- House26_table
House39_table_ANN_Weeklylag <- House39_table
House4_table_ANN_Weeklylag <- House4_table
House9_table_ANN_Weeklylag <- House9_table

##########################Linear Regression##########################################3
# STLF using daily lag
model_House14 <- lm(hourly_load ~ Daily_lag, data = House14)
model_House14
House14_table_LM_Dailylag$hourly_load = predict (model_House14, House4_table)

model_House15 <- lm(hourly_load ~ Daily_lag, data = House15)
model_House15
House15_table_LM_Dailylag$hourly_load = predict (model_House15, House15_table)

model_House18 <- lm(hourly_load ~ Daily_lag, data = House18)
model_House18
House18_table_LM_Dailylag$hourly_load = predict (model_House18, House18_table)


model_House2 <- lm(hourly_load ~ Daily_lag, data = House2)
model_House2
House2_table_LM_Dailylag$hourly_load = predict (model_House2, House2_table)

model_House21 <- lm(hourly_load ~ Daily_lag, data = House21)
model_House21
House21_table_LM_Dailylag$hourly_load = predict (model_House21, House21_table)

model_House26 <- lm(hourly_load ~ Daily_lag, data = House26)
model_House26
House26_table_LM_Dailylag$hourly_load = predict (model_House26, House26_table)

model_House39 <- lm(hourly_load ~ Daily_lag, data = House39)
model_House39
House39_table_LM_Dailylag$hourly_load = predict (model_House39, House39_table)

model_House4 <- lm(hourly_load ~ Daily_lag, data = House4)
model_House4
House4_table_LM_Dailylag$hourly_load = predict (model_House4, House4_table)

model_House9 <- lm(hourly_load ~ Daily_lag, data = House9)
model_House9
House9_table_LM_Dailylag$hourly_load = predict (model_House9, House9_table)

#STLF using Weekly Lag
model1_House14 <- lm(hourly_load ~ Week_lag, data = House14)
model1_House14
House14_table_LM_Weeklylag$hourly_load = predict (model1_House14, House14_table)

model1_House15 <- lm(hourly_load ~ Week_lag, data = House15)
model1_House15
House15_table_LM_Weeklylag$hourly_load = predict (model1_House15, House15_table)

model1_House18 <- lm(hourly_load ~ Week_lag, data = House18)
model1_House18
House18_table_LM_Weeklylag$hourly_load = predict (model1_House18, House18_table)

model1_House2 <- lm(hourly_load ~ Week_lag, data = House2)
model1_House2
House2_table_LM_Weeklylag$hourly_load = predict (model1_House2, House2_table)

model1_House21 <- lm(hourly_load ~ Week_lag, data = House21)
model1_House21
House21_table_LM_Weeklylag$hourly_load = predict (model1_House21, House21_table)

model1_House26 <- lm(hourly_load ~ Week_lag, data = House26)
model1_House26
House26_table_LM_Weeklylag$hourly_load = predict (model1_House26, House26_table)

model1_House39 <- lm(hourly_load ~ Week_lag, data = House39)
model1_House39
House39_table_LM_Weeklylag$hourly_load = predict (model1_House39, House39_table)

model1_House4 <- lm(hourly_load ~ Week_lag, data = House4)
model1_House4
House4_table_LM_Weeklylag$hourly_load = predict (model1_House4, House4_table)

model1_House9 <- lm(hourly_load ~ Week_lag, data = House9)
model1_House9
House9_table_LM_Weeklylag$hourly_load = predict (model1_House9, House9_table)

#########################SVM##################################################

#STLF using Daily Lag
training_House14 <- House14[1:8760,]
testing_House14 <- House14[8761:8784,]
svm_model_House14 <- svm(hourly_load~Daily_lag, data = training_House14, type = "eps-regression", kernel = "radial")
svm_model_House14
predict(svm_model_House14, testing_House14)

