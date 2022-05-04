#control statement

#if

X < 6


if(X > 0){
  print("Positive number")
}


#if else

X <- -6

if(X > 0){
  print("Positive number")
} else{
  print("negetive number")
}


#nested if
X <- 0

if(X > 0){
  print("Positive number")
} else if(X < 0){
  print("negetive number")
} else{
  print("Zero")
}



#while loop

i <- 1

while (i < 6){
  print(i)
  i = i+1
}


#for loop

5:25

for(i in 1:10){
  print(i)
}






#importing & exporting
getwd()
setwd("D:\\SLIIT\\SLIIT\\2nd year\\2nd Semester\\PS\\RStudio")
getwd()


Data_2 <- read.csv("Data 2.csv", header = TRUE, sep = ",")
Data_2



fix(Data_2)




#export


Name <- c("Nimal","Kamal", "Saman")
Marks <- c(89, 56, 88)

maths <- data.frame(Name, Marks)
maths



#function

function_01 <- function(a,b){
  y <- a+b
  y
}

funvtion_01(8,10)
















