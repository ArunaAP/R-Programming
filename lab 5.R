getwd()

data <- read.table("Data.txt", header = TRUE, sep = ",")
data
fix(data)

names(data) <- c("x1", "x2")

attach(data)

#Q1
hist(x2, main = "Number of shareholders")
abline(h=0)

#Q2
histogram <- hist(x2, main = "Number of shareholders", 
     breaks = seq(130,270, length=8), right = FALSE)
abline(h=0)

#Q3
breaks <- round(histogram$breaks)
breaks

freq <- histogram$counts
freq

mids <- histogram$mids
mids


classes <- c()

i <- 1

for(i in 1: length(breaks)-1){
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], "]")
}
classes

cbind(Classes = classes, Frequency = freq)




#Q4

lines(histogram$mids, freq)

plot(mids, freq, type = "l", main = "Frequency polygon for shareholders", 
     xlab = "shareholders", ylab = "Frequency", ylim = c(0, max(freq)) )

#Q5
















