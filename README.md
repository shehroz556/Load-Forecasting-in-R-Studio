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
