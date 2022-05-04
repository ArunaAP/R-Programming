getwd()
setwd("D:\\SLIIT\\SLIIT\\2nd year\\2nd Semester\\PS\\RStudio")
getwd()


#Q01
data <- read.table("DATA 4.txt", sep=" ", header = TRUE)
fix(data)

attach(data)


#Q02
#a
#barplot
boxplot(X1, main ="Boxplot for team attendance",outline = TRUE, outpch=8 , horizontal = TRUE)
boxplot(X2, main ="Boxplot for team salary",outline = TRUE, outpch=8 , horizontal = TRUE)
boxplot(X3, main ="Boxplot for team years",outline = TRUE, outpch=1 , horizontal = TRUE)


#histpgram
hist(X1, main = "Histogram for team attendance", xlab = "team attendance", ylab ="Frequncy " )
hist(X2, main = "Histogram for salary", xlab = "salarye", ylab ="Frequncy " )
hist(X1, main = "Histogram for years", xlab = "years", ylab ="Frequncy " )


#stem-leaf plot
stem(X1)
stem(X2)
stem(X3)


#b
mean(X1)
mean(X2)
mean(X3)

median(X1)
median(X2)
median(X3)


sd(X1)
sd(X2)
sd(X3)




#c
summary(X1)
summary(X2)
summary(X3)

quantile(X1)
quantile(X1) [2]

quantile(X2)
quantile(X3)

#d
IQR(X1)
IQR(X2)
IQR(X3)


#Q03

get.mode <- function(y){
  counts <- table(X3)
  names(counts[counts==max(counts)])
}
get.mode(X3)
table(X3)


#Q04
get.outliers<-function(z){
  q1 <- quantile(z) [2]
  q3 <- quantile(z) [4]
  iqr <- q3-q1
  
  ub <- q3+1.5*iqr
  lb <- q1-1.5*iqr
  
  print(paste("Upper bound = ", ub))
  print(paste("Lower bound = ",lb))
  print(paste("Outliers = ", paste(sort(z[z<lb | z>ub]), collapse = ",")))
}

get.outliers(X1)
get.outliers(X2)
get.outliers(X3)


detach(data)















