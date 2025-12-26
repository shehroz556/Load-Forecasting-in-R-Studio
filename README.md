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


