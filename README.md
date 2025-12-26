# Load-Forecasting-in-R-Studio
Application of Multiple-Linear Regression, Support-Vector Machine, and Artificial Neural Networks to predict short-term load requirements. 


# Data Input
The data available is the total electricity consumption of households situated in various areas
of Lahore, Pakistan, from the PRECON (Pakistan Residential Electricity Consumption) dataset.
The data consists of one-year total energy consumption data from 1st June 2018 till 30th May
2019 at a one-minute time interval in kilo-watts. 


# Research
Paper 1 explains the time-series approach to load forecasting. It is shown that 'Box and Jenkins' time series models, in particular, are well suited to this application. The logical and organized procedures for model development, utilizing the autocorrelation function and the partial autocorrelation function, make these models particularly attractive. One of the drawbacks of these models is the inability to represent the nonlinear relationship between load and temperature accurately. A simple procedure for overcoming this difficulty is introduced, and several Box and Jenkins models are compared with a forecasting procedure currently used by a utility company.

Paper 2 explains that along with the deregulation of electric power market as well as aggregation of renewable resources, short term load forecasting (STLF) has become more and more momentous. However, it is a hard task due to various influential factors that leads to volatility and instability of the series. Therefore, this paper proposes a hybrid model which combines empirical mode decomposition (EMD), minimal redundancy maximal relevance (mRMR), general regression neural network (GRNN) with fruit fly optimization algorithm (FOA), namely EMD-mRMR-FOA-GRNN. The original load series is firstly decomposed into a quantity of intrinsic mode functions (IMFs) and a residue with different frequency so as to weaken the volatility of the series influenced by complicated factors. Then, mRMR is employed to obtain the best feature set through the correlation analysis between each IMF and the features including day types, temperature, meteorology conditions and so on. Finally, FOA is utilized to optimize the smoothing factor in GRNN. The ultimate forecasted load can be derived from the summation of the predicted results for all IMFs. To validate the proposed technique, load data in Langfang, China are provided. The results demonstrate that EMD-mRMR-FOA-GRNN is a promising approach in terms of STLF.

Paper 3 discusses the state of the art in short-term load forecasting (STLF), that is, the prediction of the system load over an interval ranging from one hour to one week. The paper reviews the important role of STLF in the on-line scheduling and security functions of an energy management system (EMS). It then discusses the nature of the load and the different factors influencing its behavior. A detailed classification of the types of load modeling and forecasting techniques is presented. Whenever appropriate, the classification is accompanied by recommendations and by references to the literature which support or expand the discussion. The paper also presents a lengthy discussion of practical aspects for the development and usage of STLF models and packages.

# Assignment 1
In the contemporary world, many businesses have been engaged in building reliable self-driving vehicles, and therefore, these vehicles have to be instructed on what to do in differing situations. One such situation is that of when to apply the brakes of the car. The algorithm used to instruct the self-driving car will take into account the speed of the car at the moment when the brakes are applied so that it covers a specific distance which helps it to avoid collision. For such cases, this model will become useful.  
The correlation coefficient tells us the strength and direction of the relationship between two variables. In this case, the correlation coefficient is 0.8068949, which means that it is a strong positive relationship. Considering the correlation coefficient, we use the linear regression analysis to determine the coefficient B1 and the intercept B0 for the linear equation of:
dist = B0 + B1speed
 	After running the regression analysis, we find the intercept to be -20.6116. This means that when the speed of the car is 0 mph, it will travel 20.6116, on average, in the reverse direction. This finding is unreasonable because at 0 mph, the car will remain stationary. We find that the coefficient of speed is 4.1452. This means that when the speed of the car increases by 1 mph, it will cover a distance of 4.1452 on average. To summarize our results:
•	For distance covered, the minimum value of our model is -30.292; the value for the 25th percentile is -9.965; the value for the median is -2.131; the value for the 75th percentile is 10.498, and maximum value is 42.579. 
•	It tells us that the coefficients of B0 and B1 are -20.6116 and 4.1452 respectively. 
•	The standard errors can be used to find the statistical significance of the B0 and B1. 
•	The R^2 of 0.6453 tells us that 64.53% of the variation in distance is caused by speed.
•	Even at smallest possible significance level of 1%, the p-value is 4.43e-10. This means that we reject the null hypotheses of B1 = 0, and conclude that our model is statistically significant. 
After predicting the distance column from the testing data, we use some metrics to check how our linear regression model performed. The interpretations of the errors from the accuracy function are:
•	The mean error (ME) comes out to be 1.22. This means that the model is off by 1.22 ft on average. 
•	The root mean squared error (RMSE) comes out to be 15.03. The difference is that this statistic is calculated by squaring and taking root. Hence, we can also say that the errors are 15.03 ft away from the line of best fit on average. 
•	The mean absolute error (MAE) comes out to be 12.2355. This tells us the average magnitude of errors in a set of predictions without considering their direction. Hence, this also tells us about the prediction errors. It tells us that the model is off by 12.2355 ft on average. 
•	The mean percentage error (MPE) comes out to be 5.316. This tells us how far our model was from the actual value in percentage terms. Hence, it says that our model was 5.316% away from the true value on average.
•	The mean absolute percent error (MAPE) comes out to be 55.016. This also tells us about forecast error but it removes negative values due to taking absolutes. Hence, it tells us that the model was off by 55.016%. 
All of these errors tell us about how our model performed and how accurate are our forecasting results. The RMSE is always higher or equal to MAE depending on the variance of individual errors. Since in our model, RMSE > MAE, and therefore, the variance of individual errors is higher. RMSE = MAE only if the model is homoscedastic. Only the MAE and MAPE are robust to outliers. All of these statistics tell us about prediction errors such that how far our values are from the actual values. Therefore, we want all of these errors to be as low as possible. The ME, RMSE, and MAE are errors expressed not expressed in percentage terms, whereas the MPE and MAPE are expressed in percentage terms. All of these statistics show differing results when predicting how far our model was off from actual values. However, all the errors are consistent in showing significant differences between predicted and actual values (in ft distance). 
	In the case of self-driving cars, the model has to be accurate enough in order for the cars to avoid collision. Considering our error terms above, the model is not suitable for self-driving cars because there is a probable chance of collision. 
The linear regression model to predict the rating of cereal using calories is:
Rating of cereal = B0 + B1calories


# Assignment 2
**Unsupervised Classification**
It is one of the image-classification techniques, also called computer-automated classification, whereby pixels which are related to each other or have some sort of ‘spectral similarity’ are grouped together into classes. The user is only able to manually enter the number of classes needed, specify the number of iterations the algorithm runs, and label and interpret the classes. An example of this could be recommender systems, which involves grouping together users with similar viewing patterns in order to recommend similar content. 
**Supervised Classification**
The second type of image-classification technique is user-guided whereby the user ‘supervises’ the classification process. The user has to provide training sites or areas that are representative of a particular land cover type. The more time the user spends on finding the best training sites, the better the outcomes of the classification procedure. Then, one of the multiple computer-algorithms will run using the ‘spectral signatures’ from the training areas. These computer-algorithms can be divided into four types: Maximum likelihood, Minimum distance, Mahalanobis Distance, Spectral Angle Mapper. To avoid misclassifications, covariance between classes should be as low as possible. An example of this could be teacher-student relationship. Unless the student gets a grade above F, the teacher will tune the student and make the student learn from his mistakes of the past. Until then, the student will remain in the ‘fail’ category. 
**Supervised Regression**
Supervised regression is a user-guided regression technique whereby the user provides the input into an algorithm of choice to produce an output value. This is different from classification because it provides a value as an output rather than a category. The goal is to approximate a mapping function of Y = f(X) that you can use any new input data to predict the output values of that data. It is called ‘supervised’ because the algorithm learns from the training dataset until it reaches an acceptable level of performance. The Simple Linear Regression assumes a linear relationship between the input and output variables. In a polynomial regression, the regression line is transformed into a quadratic. In Support vector regression, margins are identified so that maximum numbers of data-points are within that margin, and therefore, the best-fit line will be a hyperplane that has the maximum number of data-points. In Decision-tree regression, the ‘splitting-node’ is identified at each level by decreasing the standard deviation. It is built on dividing the data into subsets. The random forest regression considers the predictions of several decision trees. An example and application would be to determine the returns to education in a specified area. This is a simple linear regression unless control variables are added. 
**Unsupervised Regression**
This is a regression technique that does not make use of training data. While the user will provide the inputs, the algorithm-run will be computer-automated. A regression technique requires the input of the explanatory variable and the dependent variable. It also requires the provision of the algorithm. Therefore, I cannot think of an example or application to the unsupervised regression. Purely off the top, i think a quantile regression technique could classify as unsupervised regression technique although it does require the provision of an algorithm. 

Q. Answer the following with code:
**1.	Which car has the lowest mpg?**
Ans. Hi1200d
**2.	What is the mpg of the heaviest car?**
Ans. 13
**3.	Does the car with the highest horsepower also has the highest acceleration?**
Ans. No because the car with the highest horsepower is “Pontiac Grand Prix” and the car with the highest acceleration is “Peugeot 504”
**4.	What is the displacement of audi5000s (diesel)?**
Ans. 121
**Q. Mpg shows high negative correlation with cylinders, displacement and weight. Is this expected? Explain.**
Ans. This is expected because the more the cylinders, displacement, and weight, the higher acceleration will be required to drive the car. This will increase the fuel consumption and give less mpg. 
**Q. What is the correlation between horsepower and acceleration?**
Ans. While the tutorial says that the correlation between horsepower and acceleration is positive, it is showing -0.6892 for me. 
**Q. What is cost? Should it be 1 as it is in this model?**
Ans. Cost is the cost of misclassification. A large cost gives you low bias and high variance. A smaller cost gives you high bias and low variance. In this case, the cost = 1. It should be higher in this model if we want to trade off error penalty for stability. 
**Q. What is gamma?**
Ans. Gamma is a parameter for a Gaussian Kernel to handle non-linear classification. So a small gamma will give you low bias and high variance while a large gamma will give you higher bias and low variance.
**Q. Interpret the other error metrics below. In what case the MAPE and MPE are going to be too high and useless? Are they in this case?**
Ans. 
•	The ME is -1.277694. This means that the model is off by 1.277694 in the negative direction on average such that the predicted value is less than the true value by 1.2277694 on average. 
•	The RMSE is 6.780702. This means the normalized distance between actual and predicted values in 6.780702. In RMSE, the taking the root of the squared term nullifies the direction of the error. 
•	The MPE is 52.20773. This means that the difference between predicted and actual values, whereby the values can be of whatever magnitude, is 52.2% on average. 
•	The MAPE is 79.03122. This means that the difference between actual and predicted values, whereby the values can be of whatever magnitude, regardless of their direction is 79.03122%. 
•	The MPE and MAPE are going to be too high with respective values of 52.2% and 79.03%. We want our errors to be low as possible, and therefore, the parameters of the model would have to be changed in such a way that we have smallest errors as possible. Perhaps, the reason is that the y-variable and the x-variable do not form a polynomial relationship as have been used in the model. Another reason could be that the degree ‘5’ is not suitable for the model. 
**Q. Create a new SVR model using radial and sigmoid kernels. Note that both of these kernels do not use degree hyper-parameter. Which model is better? Why?**
Ans. Using radial kernel, the errors we get are: 
              ME     RMSE      MAE      MPE     MAPE
Test set 0.509855 4.277864 3.120832 1.634758 12.91929
Using sigmoid kernel, the errors we get are:
    ME     RMSE      MAE      MPE     MAPE
Test set -20.84243 61.72145 43.80361 73.69199 137.2436
Therefore, we can see that the errors are minimized if we use the radial kernel. Hence, the radial kernel is most suitable for our model. 

# Assignment 3
**Q. 
Create a new ANN model, with three hidden layers, there should be three neurons in the first and the third layer and 8 in the second layer. The model would take some time to train. Be patient! Compare your model to mine. Which one is better?**
Ans. 
If we input this neuron strategy and change the relevant parameter, the algorithm does not converge. We are faced with this error:
Warning message:
Algorithm did not converge in 1 of 1 repetition(s) within the stepmax.
In order to rectify this error, we will introduce a small change in our parameters. Firstly, we will try changing the training dataset by opting for 80% of the original data rather than 70%, as was in the original model. Using this sample size, we are able to run the ANN model and derive these errors:
ME     RMSE      MAE        MPE     MAPE
Test set 0.06308287 6.532173 5.063186 0.01199533 1.107108
The errors in the original model were:
ME RMSE MAE MPE MAPE 
Test set -0.05357375 6.748359 5.159662 0.01254363 1.127849
We can see that we have significantly reduced the MAPE with our new neuron strategy. Hence, the latter model is better as compared to the previous model. The problem is that we are not keeping the sample size constant which might have contributed to more favorable results. Additionally,  we can also see that the model is predicting unseen data quite nicely. The predictors had a high correlation with EP, which meant a strong linear relationship.
**Q2. 
In tutorial 2, you used linear regression to predict the cereal rating. Create an ANN model using multiple variables to predict the rating for the same data. Write a complete report comparing the two models?**
Ans. Firstly, we will look at the correlation of the variables with each other to determine which explanatory variables we should use to predict serial rating using ANN model. We can see that calories and fat have a mildly strong negative relationship with cereal rating, but also they have a correlation with each other of 0.50. Therefore, we will only choose one of them. For the purpose of our model, we will choose fat. Secondly, we will use protein as our explanatory variable since it does have some correlation of 0.47 with cereal rating, but it has no significant correlation with calories. The third variable we will use is vitamins for the same reason mentioned above. Now, we will remove the data with categorical variables so that it does not interfere when we are normalizing it. After normalizing the data, we will divide our dataset into test and train. For the purposes of our model, we will use 80% of the dataset as our sample size. 
After doing that, we will run our ANN model whereby we will use calories, proteins, and vitamins to predict cereal ratings. The parameters we will initially choose our based off the model mentioned in tutorial 4. We will alter these parameters to minimize errors later. As predicted by a good model, the values lie on y=x line. Now, we have to predict the test data. From the plot we can see that the predictors do not have a high correlation with rating. Also, they do not demonstrate a strong linear relationship. This can be seen below. Finally, we try to find the error statistics of our model. These are shown below.
    ME     RMSE      MAE       MPE     MAPE
Test set -2.014818 7.725098 6.737633 -7.414983 18.10099
Since the most significant error metric for our model is MAPE, we can see that it has a value of 18.10099. This means that the difference between predicted values and actual values of rating, regardless of their sign and magnitude, is 18.10%. 

# Assignment 4
**Q. How much watts are there in 1 horse-power?**
Ans. 1 horse-power has 745.7 watts.
**Q. What is the wattage of the refrigerator at your home? There should be a nameplate at the back. Send a picture of it.**
Ans. It has wattage of 183. 
**Q. What is the relationship between Energy & Power?**
Ans. Energy is the ability to do work such that it is the ability to exert a force that causes the displacement of an object. Power is the rate of doing work such that it is the amount of energy consumed per unit time. The formula to explain the relationship between energy and power is:
P=dE/dt
**Q. The unit of Energy commonly used in the field of Energy is kWh. How is kWh equal to J (joules)?**
Ans. Energy is measured in J (joules). Power is the rate at which energy is consumed. If we are using one joule of energy in one second, we can say that one watt of power is used. A kW is 1000 watts. If we use one kW of power for one hour, we have used 1 kWh of energy. 1 kWh is equivalent to a 1000 joules used for 3600 seconds or 3.6 million joules. Therefore, 1 kWh is equivalent to 3.6 million Joules.
**Q. How much Energy will your refrigerator consume in 2 hours? How much will it cost?**
Ans. 
We know that 1 unit = 1 kWh
Power = 183 watt = 0.183 kWh
Time = 2 hours so 0.183 x 2 = 0.366 kW for 2 hours
This means that we are consuming 0.366 units in 2 hours
As we are domestic users, considering we are using our refrigerator in peak-timings and considering we are using it in the range of first 100 units whereby the cost per unit is 7.74, the cost of refrigerator use for 2 hours is 7.74 x 0.366 = Rs 2.83284 
**Q. Explain the merge() function used above?**
Ans. The merge command used is: 
House_2 = merge(House_2, All_minutes, by = "Date_Time", all.y = TRUE)
Firstly, the first and second arguments are two data frames which are being merged into one. The third argument “by = Date_Time” is the column that is used for merging. The fourth argument “all.y = TRUE” means that the output will have extra rows added, one for each row in All_minutes that has no matching row in House_2. These rows will have NAs in those columns that are usually filled with values from House_2. 
**Q.  Explain this sapply(House_2, class)?**
Ans. This command is used to determine the data type of each column of the dataset. Since our dataset of House_2 only has 2 columns of date/time and Usage_kW, the command returns the data type of both columns as "POSIXct" "POSIXt" and "numeric" respectively. R explains the sapply function used to return a vector or a matrix. 
**Q. Explain this: tapply(House_2$Usage_kW,(row(as.matrix(House_2$Usage_kW))-1)%/%60, mean).**
Ans. tapply() computes a measure (mean, median, min, max, etc..) or a function for each factor variable in a vector. It is a very useful function that lets you create a subset of a vector and then apply some functions to each of the subset. What is happening in this command is that the as.matrix is returning a matrix of all the observations in Usage_kW. The row function is returning a matrix indicating the row number of each observation, in Usage_kW, and subtracting 1 from it. Therefore, we have an index of 0, 1, 2, 3, 4… and so on. For each row number, the %/% indicates that the Usage_kW observation for that row number is divided by 60. This is to convert Usage_kW data from minute-interval to hour_interval data. 
**Q. The summary of the hourly data shows that the average of Usage_kW is not changed. But the maximum value has decreased from 4.515 kW to 3.45 kW. Why is it so?**
Ans.  We can see that the maximum value was initially 4.515 kW and now it is 3.45 kW. We can see that the corresponding date/time was initially 2019-05-31 23:59:00 and now it is 2019-05-31 23:00:00. Therefore, the date/time has also changed. Initially, the data had observations of Usage_kW per minute. Now, the data has observations of Usage_kW per hour. The observations for kW/h were derived by the tapply() function as all observations for the sixty minutes were summed up and divided by 60, and hence the ‘mean’. Let us call the new observations of Usage_kW as means. The average of these means will be the same as the original observations. To make matter simpler, suppose we have 4 suppliers of mangoes. The first supplier has 1 mango, the second supplier has 2 mangoes, the third supplier has 3 mangoes, and the fourth supplier has 4 mangoes. Each mango has a specific weight. We can see that the average value of all of these mangoes would be (0.3 + 0.2 + 0.3 + 0.25 + 0.35 + 0.3 + 0.2 + 0.25 + 0.27 + 0.4)/10 = 0.282 kg
The maximum value would be 0.4 kg for Mango 4 by Supplier 4. 
However, if we change the weight per mango to mean weight per supplier, the values are indicated in red in the table, the average of these mean values come out to be (0.3 + 0.25 + 0.3 + 0.28)/4 = 0.2825 kg
This is the same as the original average. Hence, the mean value is the same. 
As for the max value, it will be 0.3kg now because now our observations are mean weight per supplier. 
This is what happened with our dataset of House_2 whereby the mean value remained the same but the max value changed. Particularly, the max value changed because we are observing our data by kWh now, and therefore, the hour with the highest mean value will be chosen as the max value. 

# Assignment 5
**Q. Explain the summary above.**
The household data is measured from 2018-06-01 00:00:00 to 2019-05-31 23:00:00. The data is measured in one-hour intervals. There are a total of 9 houses: #2, #4, #9, #14, #15, #18, #21, #26, and #39. House #2 and House #14 has minimum value of Usage_kW as 0 kW for many time intervals indicating that no power was consumed for some time in this household. In the time span mentioned above, House #15 has consumed the most power at a particular minute – 9.153413 kW - compared to all other households. House #4 has the highest mean value in Usage_kW among all the households, whereas House #14 has the lowest mean value in Usage_kW owing to no usage of power for a particular time span. 
**Q. Explain the code above.**
The first part of the command is: houses_melt = melt(Houses[,-1])
This function is used to reshape the data frame such that it stretches the data frame and changes it into a long format. Therefore, this command keeps the “Date_Time” variable as constant, and constructs two more variables of “Houses” and “Usage_kW”. It must be noted that Date_Time are repeated for each house in the data frame. 
The second part of the command is: ggplotly(ggplot(houses_melt)+ geom_boxplot(aes(x = variable, y = value))+  labs(x="Houses", y = "Usage [kW]"))
Plotly is an R package for creating interactive web-based graphs via plotly’s javascript graphing library. The ggplotly function serializes ggplot2 figures into plotly’s universal graph JSON such that ggplotly will crawl into the ggplot2 figure, extract and translate all the attributes of the ggplot2 figure into JSON (the colors, the axes, the chart type, etc), and draw the graph with plotly.js. Therefore, our command instructs R to use x as a variable (label it Houses), and y as a numeric value (label it Usage[kW], and construct a box plot as shown in the tutorial. 
**Q. List down all the useful information that you can extract from these boxplots?**
Most of the information we gather from the boxplots is similar to the information gathered from the summary statistics. For instance, the box plot shows that House #15 has the highest value, in Usage_kW, among all other houses. Additionally, we can see that House #2 and House #14 has the lowest value, in Usage_kW, among all other houses. We can also see that House #15 has the greatest outliers in Usage_kW among all other houses which mean that forecasting their load profiles can be difficult. We can also see that the inter-quartile range is the smallest for House #14 and highest for House #15. Owing to 0 kW usage of House #14 for many hours, their median consumption of electricity is very low. Generally, all the houses face an uneven distribution of Usage_kW among themselves. 
**Q.  Isolate House 2, what is strange about this house’s electricity consumption? What is a possible explanation?**
The odd thing about this house’s electricity consumption is that it consumed 0 kW of power from 06/25/2018 10:00:00 to 07/08/2018 16:00:00. This is a span of approximately 13 days. A possible explanation is that the residents of this house either went on vacations or somewhere for work. It is probably vacations because Eid-ul-Fitr had just ended on June 18, and many families tend to go on vacations after Eid-ul-Fitr. However, this is just an assumption. There can be many other reasons for this irregularity. 
**Q. Isolate House 14, what is strange about this house’s electricity consumption? What is a possible explanation?**
The odd thing about this house’s electricity consumption is that it consumed 0 kW of power from 06/01/2018 00:00:00 to 07/06/2018 21:00:00. We also see that the data starts being recorded at 06/01/2018 00:00:00 for all houses, and house #14’s consumption remains 0 kW from then on for a considerable period of time. The only logical assumption to be made here is that for this timespan, house #14 had no residents/owners. The house was either rented or bought at 07/06/2018, and therefore, its electricity consumption starts from that date. 
**Q. Create a similar boxplot for each hour pattern for House 4. I have attached a snapshot of the plot for your guidance.**
We use the commands: House_4 = Houses[ , c(1,9)]
House_4$hour = as.POSIXlt(House_4$Date_Time)$hour
ggplotly(ggplot(House_4)+geom_boxplot(aes(x = hour, y = House4))+labs(x="Houses", y = "Usage [kW]")+theme(axis.text.x = element_text(angle = 45))+scale_x_continuous(limits= c(0,23), breaks=c(0:23)))
**Q. Is there any other information that you can deduct from the plots above?**
We can see from the monthly box and whisker’s plot for House #15 that its consumption of electricity tends to be low in the winter and high in the summer. This might be obvious, but interestingly, we have proved this using data. We can assume the reason to be low high-voltage appliance usage in the winters i.e people do not really make use of coolers/ACs in winters. More importantly, this is not just true for House #15. The plots of electricity loads against Date/Time for all houses adhere to this trend. 
**Q. Explain patterns that you observe in these household’s electricity consumption?**
Firstly, we can observe that the box and whisker’s plot indicate a trend whereby electricity consumption falls during the day and rises during the night. Therefore, we can safely assume that ‘electricity consumption is high at night and low during the day’ holds for most of the houses in our study. However, House #2 and House #18 are an exception because we can see that their electricity consumption is relatively high during the day too. There can be many reasons for this such as the house’s demography i.e relatively higher number of residents in the house. 
Moving onto the statistics part, we can see that all the houses have a considerable number of outliers, meaning that there are certain times of the day and night when electricity consumption highly uncertain. For instance, if we take a look at House #14, it has a significant number of outliers outside 1.5 times its interquartile range above its upper quartile. Therefore, it is difficult to predict loads for house #14 when it such a significant number of outliers in its electricity consumption. 
Aside from this information, the only thing we can get out of the box and whisker’s plot is the interquartile range and range. If we take a look at House #4, it has the smallest range and interquartile range. This can mean that the residents of this house are very careful with their electricity consumption. Alternatively, we also see a trend that inter-quartile range and range tends to increase in the night for most houses. Perhaps, this is because people tend to be more comfortable when they sleep at night and that is why they make use of high-voltage appliances at that time. 







