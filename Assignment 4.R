#Importing the House_1 data
House_1 =
read.csv("http://web.lums.edu.pk/~eig/precon_files/House1.csv")

#Specifying the Date_Time as a class describing date and time
House_1$Date_Time = as.POSIXct(House_1$Date_Time)

#Summary statistics of House_1
summary(House_1)

#Importing House_2 data from the web
House_2 = read.csv("http://web.lums.edu.pk/~eig/precon_files/House2.csv")

#Specifying the Date_Time as a class describing date and time
House_2$Date_Time = as.POSIXct(House_2$Date_Time)

#Summary statistics of House_2
summary(House_2)

#Deleting unnecessary columns (3-7)
House_2 = House_2[,-c(3:7)]

#Structure of the data frame
str(House_2)

#To observe how many rows the data frame has
nrow(House_2)/60

#Creating another data frame of "All_minutes
All_minutes = data.frame(Date_Time = seq.POSIXt(from = as.POSIXct("2018-06-01 00:00:00 PKT"),
                                                to = as.POSIXct("2019-05-31 23:59:00 PKT"), by = 
                                                                  "min"))
#Merging the data frame
House_2 = merge(House_2, All_minutes, by = "Date_Time", all.y = TRUE) 
summary(House_2)

#To check merge command in detail
?merge

#To return a vector from both columns of House_2
sapply(House_2, class)

#To check tapply command in detail
?tapply

#To check row command in detail 
?row

#To check the as.matrix function call in detail
?as.matrix

#To answer the questions in Tutorial5 whereby we convert our data frame from minute-interval to hour-interval
matrix <- as.matrix(House_2$Usage_kW)
row2 <- row(matrix)
row3 <- row(as.matrix(House_2$Usage_kW)) - 1
tapply <- tapply(House_2$Usage_kW,(row(as.matrix(House_2$Usage_kW))-1)%/%60, mean)
House_2 = data.frame( Date_Time = seq.POSIXt(from = as.POSIXct("2018-06-01 PKT"),
                                             to = as.POSIXct("2019-05-31 23:00:00 PKT"), by =
                                                               "hour"), Usage_kW = c(tapply(House_2$Usage_kW,(row(as.matrix(House_2$Usage_kW))-1)%/%60, mean)))
summary(House_2)

