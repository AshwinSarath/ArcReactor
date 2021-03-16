#NAME: ASHWIN SARATH 
# 20MDT1012

# 1 a
a <- c(1,2,5.3,6,-2,4) # numeric vector 
a
b <- c("one","two","three") # character vector
b
c <- c(TRUE,TRUE,TRUE,FALSE,TRUE,FALSE)  # bool vector

#1 b

m<-matrix(1:20, nrow=5,ncol=4)
m

# 1 c
roll <- c(1,2,3,4)
col <- c("red", "white", "red", NA)  #NA not available
is_true_col <- c(TRUE,TRUE,TRUE,FALSE)
mydata <- data.frame(roll,col,is_true_col)
mydata
names(mydata) <- c("roll","color","truhtness") # variable names 
mydata

# 1 d
m<-matrix(21:40, nrow=5,ncol=4)
w <- list(name="ASHWIN", mynumbers=a, mymatrix=m, age=24)
w

# 1 e


lot <- c(rep("Blue balls",10), rep("Black balls", 30))
lot
lot<- factor(lot)
summary(lot)

###################################
# 2
library(readxl)
df<-read_excel(file.choose()) # GET ACCESS ### NOAA EARHAUKE DATA
dir()

# 3 
age <- c(25, 30, 56)
gender <- c("male", "female", "male")
weight <- c(160, 110, 220)
mydata <- data.frame(age,gender,weight) 
mydata

# 4
#WE WILL EXPORT "mydata" 
write.table(mydata, "mydata.txt", sep="\t")  # in current working dir
write.csv(mydata, "mydata.csv") #in the current directory
















