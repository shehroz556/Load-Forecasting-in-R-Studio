library(readr)
Houses <- read_csv("C:/Users/Shehroz Jawad Khan/Desktop/LEI Internship/Task6/Houses.csv")

Houses$Date_Time = as.POSIXct(Houses$Date_Time)

dim(Houses)

str(Houses)

summary(Houses)

install.packages("plotly")
install.packages("reshape")
install.packages("reshape2")

library(plotly)
library(reshape)
library(reshape2)

houses_melt = melt(Houses[,-1])

ggplotly(
  ggplot(Houses, aes(x = Date_Time))+
    geom_line(aes(y = House2, color = "House 2"))+
    geom_line(aes(y = House21, color = "House 21"))+
    geom_line(aes(y = House26, color = "House 26"))+
    geom_line(aes(y = House39, color = "House 39"))+
    geom_line(aes(y = House4, color = "House 4"))+
    geom_line(aes(y = House9, color = "House 9"))+
    geom_line(aes(y = House14, color = "House 14"))+
    geom_line(aes(y = House15, color = "House 15"))+
    geom_line(aes(y = House18, color = "House 18"))+ 
    theme(legend.title = element_blank()) + labs(x = "Date\\Time", y = "USage [kW]")
)

House_15 = Houses[,c(1,3)]
House_15$Month = paste(months(House_15$Date_Time, abbreviate = TRUE) ,as.POSIXlt(House_15$Date_Time)$year+1900)
ggplotly(ggplot(House_15)+geom_boxplot(aes(x = Month, y = House15))+labs(x="Houses", y = "Usage [kW]")+theme(axis.text.x = element_text(angle = 45))+scale_x_discrete(limits= c(paste(month.abb[6:12], "2018"),paste(month.abb[1:5], "2019"))))

House_4 = Houses[,c(1,9)]
House_4$hour = as.POSIXlt(House_4$Date_Time)$hour
ggplotly(ggplot(House_4)+geom_boxplot(aes(x = hour, y = House4))+labs(x="Houses", y = "Usage [kW]")+theme(axis.text.x = element_text(angle = 45))+scale_x_continuous(limits= c(0,23), breaks=c(0:23)))




