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



