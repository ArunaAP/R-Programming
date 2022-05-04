getwd()
setwd("D:\\SLIIT\\SLIIT\\2nd year\\2nd Semester\\PS\\RStudio")

#Q1

data <- read.table("Forest.txt", header = TRUE, sep = ",")
fix(data)

attach(data)
attach(data)


#Q2
str(data) #to have the summary of the data set


#Q3
#517 observations


#Q4
min(wind)
max(wind)


#Q5
summary(temp)


#Q6
boxplot(wind, horizontal = TRUE, outline = TRUE, pch=16)


#Q7
#negative distribution


#Q8
#19.30



#Q9
mean(wind)
sd(wind)



#Q10
IQR(wind)   #IQR=Q3-Q1


#Q11
freq <- table(day, month)
freq



#Q12
mean(wind[month == "sep"])


#Q13
barplot(freq, besides=FALSE, xlab = "Month", ylab = "Frequency", legend= rownames(freq))




















