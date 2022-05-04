Gender<-c(0,1,0,1,1,1)
Gender

class(Gender)


#factor

Gender <- factor(Gender, c(0,1), c("Male", "Female") )

Gender
class(Gender)

getwd()
setwd("D:\\SLIIT\\SLIIT\\2nd year\\2nd Semester\\PS\\RStudio")

getwd()


#Data frame

Height <- c(10,25,41,65,78,96,25)
Weight <- c(30,45,69,78,35,45,63)

Data_set <- data.frame(Height, Weight)
Data_set

class(Data_set)




getwd()
