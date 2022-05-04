getwd()
setwd("D:\\SLIIT\\SLIIT\\2nd year\\2nd Semester\\PS\\RStudio")
getwd()


data <- read.csv("DATA 3.csv", header = TRUE) 
data
class(data)

fix(data)
 

#rename
names(data) <- c("Age", "Gender", "Accomadation")



data$Gender <- factor(data$Gender, c(1,2), c("Male", "female"))
data$Accomadation <- factor(data$Accomadation, c(1,2,3), c("Stay at home", "Borded", "Lodging"))

attach(data)

Gender
 
#2
#Frequency table
#gender

gender_FreqTable <- table(Gender)

#Accomadation

Acc_FreqTable <- table(Accomadation)


#bar chart
#gender

barplot(gender_FreqTable, main = "Barplop for Gender", xlab = "Gender", ylab = "Frequency")
abline(h=0)
abline(h=30)


#accomadation
barplot(Acc_FreqTable, main = "Barplot for Accomadation", xlab = "Accomadation", ylab = "Frequency")
abline(h=0)


#pie chart
#gender

pie(gender_FreqTable, main = "Pie chart for Gender")

#Accomadation
pie(Acc_FreqTable, main = "Pie chart for Accomadation")


#Age
#Histogram

hist(Age, main = "Histogram for Age")
abline(h=0)


#boxolot
boxplot(Age, main = "Boxplot for Age", horizontal = TRUE)



#Q3

#Two way frequency table

gender_accomadation_FreqTable <- table(Gender, Accomadation)

#Stacked bar chart
barplot(gender_accomadation_FreqTable, main = "Stacked bar chart", xlab = "Accomadation", ylab = "Frequency", 
        legend =rownames(gender_accomadation_FreqTable))
abline(h = 0)


#multiple barchart

barplot(gender_accomadation_FreqTable, beside = TRUE, main = "Multiple barchart", xlab = "Accomadation", ylab = "Frequency", 
        legend = rownames(gender_accomadation_FreqTable))

abline(h=0)




#Q4
#Side by side boxplot
#gender Age

boxplot(Age ~ Gender, main = "Side by side boxplot", xlab = "Age", ylab = "Gender", horizontal = TRUE)

#Age Accomadation
boxplot(Age ~ Accomadation, main= "Side by side boxplot" ,xlab = "Age", ylab = "Accomadation", horizontal = TRUE)






#Q5

xtabs(Age ~ Gender+Accomadation)/ gender_accomadation_FreqTable















































