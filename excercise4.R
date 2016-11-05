#1. Create a function as follows: 

`%divisible%` <- function(x,y) 
{ 
  if (x%%y ==0) return (TRUE) 
  else return (FALSE) 
} 
10 %divisible% 3 
10 %divisible% 2 
`%divisible%`(10,5)

#################Switch statement####################
#1.	Create a function 'summary' which calculates minimum, 
#maximum and sum of a matrix using 'switch' statement.

sumary=function(mata,type){
  switch (type,
    minimum=min(mata),
    maximum=max(mata),
    summ=summ(mata)
    )
}


summ=function(mata){
  summat=matrix(,nrow = nrow(mata),ncol = ncol(mata))
  for (i in 1:nrow(mata))
    {
    for (j in 1:ncol(mata))
      {
      
      summat[i,j]=mata[i,j]+mata[i,j]
    }
  }
  return(summat)
}


mata=matrix(data = c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol=3)
sumary(mata,"minimum")
sumary(mata,"maximum")
sumary(mata,"summ")


#########################infix operator################
#2.	User defined infix operator
#Create a user defined infix operator to count the number of common entries in two matrices.


'%common%'=function(a,b){
  flag=0
  for (i in 1:nrow(a)) {
    for(j in 1:ncol(a)){
      if(a[i,j]==b[i,j])
      {
        flag=flag+1
          }
        }
      }
      print(flag)    
    }
  


a=matrix(data=c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol=3)
b=matrix(data=c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol=3)

a %common% b
'%common%'(a,b)

#######################################################
#3.	Write a function that takes as its argument two vectors, x and y, produces a scatterplot, 
#and calculates the correlation coefficient (using cor(x,y)). 



scatter=function(x,y){
  plot(x,y)
    }

x=vector(mode = "numeric",length = 100)
y=vector(mode = "numeric",length = 100)
i=1
j=1
a=rnorm(100)
b=rnorm(100)
while (i<=length(x)||j<=length(y)) {
  x[i]=a[i]
  y[j]=b[j]
  i=i+1
  j=j+1
  }

scatter(x,y)


cor(x,y)

########################################################################
#4.	Create two matrices x and y:
# Calculate the following and check your answers in R: 
#  (a) 2*x  (b) x*x (c) x%*%x (d) x%*%y (e) t(y) (f) solve(x)

x=matrix(data = c(1,2,3,4),nrow = 2,ncol=2)
y=matrix(data = c(11,12,13,14),nrow = 2,ncol=2)

2*x

x*x

x%*%x

x%*%y

t(y)

solve(x,y)

###########################################################################
#5.   Decide what the following sequences are and use R to check your answers:
#  (a) 7:11  (b) seq(2,9) (c) seq(4,10,by=2) (d) seq(3,30,length=10) (e) seq(6,-4,by=-2)


7:11

seq(2,9)

seq(4,10,by=2)

seq(3,30,length=10)

seq(6,-4,by=-2)

################################################################################
#6.  Use the rep function to define simply the following vectors in R
#(a) 6,6,6,6,6,6 (b) 5,8,5,8,5,8,5,8 (c) 5,5,5,5,8,8,8,8

rep(6,times=6)



x=c(5,8)
rep(x,times=4)


rep(x,each=4,length=8)


#########################################################################################
#7.	 The function dim() returns the dimensions (a vector that has the number of rows, 
#    then number of columns) of data frames and matrices. 
#    Use this function to find the number of rows in the data frames tinting, 
#    possum and possumsites (all in the DAAG package).

library(DAAG)
library(lattice)
attach(tinting)
data("tinting")
dim(tinting)

attach(possum)
data("possum")
dim(possum)

attach(possumsites)
data("possumsites")
dim(possumsites)


######################################################################################
#8.	Extract the following subsets from the data frame ais (DAAG):

ais
data(ais)
attach(ais)
 
# (a) Extract the data for the rowers.

rowers = subset(ais, sport == "Row")
rowers

# (b) Extract the data for the rowers, the netballers and the tennis players. 

RNT = subset(ais, sport == "Row" | sport == "Netball" | sport == "Tennis" )
RNT

# (c) Extract the data for the female basketabllers and rowers

FBR = subset(ais,sex=="f" & (sport=="B_Ball" | sport == "Row"))
FBR

#########################################################################################
#9.	Run the following code: 
  
gender <- factor(c(rep("female", 91), rep("male", 92))) 
table(gender) 
gender <- factor(gender, levels=c("male", "female")) 
table(gender) 
gender <- factor(gender, levels=c("Male", "female"))#Note the mistake>#The level was"male",not"Male"
table(gender) > rm(gender) # Remove gender


###########################################################################################
#10.	Here are examples that illustrate the use of paste(): 
 

paste("Leo", "the", "lion") 
paste("a", "b") 
paste("a", "b", sep="") 
paste(1:5) 
paste(1:5, collapse="") 

#What are the respective effects of the parameters sep and collapse?


###############################################################################################
#11.	You can use R to plot some well known mathematical functions. Try the following:
 
#a
curve(sin(x),from =0, to =2*pi)

#b
curve(2*x^3+x^2-2*x+10,from =-2, to =2)

#c
curve(log(x),from =0, to =10,col="magenta")

#c
curve(5-x,from =0, to =10,col="red", add=T)

############################################################################################

#12. Obtain and attach the data set "cfb" by typing the following:

library(UsingR)
data(cfb)
attach(cfb)

#One of the vectors in this data frame is called INCOME. It represents the yearly income figures by households in 
#a survey of consumer finances is the US in 2001.
#  (a)	Obtain a histogram of the INCOME data. What does it tell you?

hist(INCOME)

# Frequencies of 25000-30000 and 30000-35000 income groups are equal, and frequency of income group 35000=40000 is double 
# than other two's


# Calculate the mean income using

mean(INCOME)

# this data describe the average income of that people in 2001

# (c)	A subcommand of the mean( ) command is "trim".
# Use ?mean to investigate what this subcommand does, and experiment with various values of "trim".

mean(INCOME,trim = 0.1)


mean(INCOME,trim = 0.2)


mean(INCOME,trim = 0.3)


mean(INCOME,trim = 0.5)


mean(INCOME,trim = 0.6)

# (d)	Calculate the median of the INCOME data using

median(INCOME)

# Does this give a better "feel" for the data set than the mean?

# "No", median gives different value than mean


# (e)	Calculate the coefficients of symmetry and
# kurtosis of the INCOME data by defining the functions discussed in the lectures (See lecture 3 on Vision).

library(e1071)
kurtosis(INCOME)

# 13.	Consider the following three random samples from a population. Enter each dataset into R using the "scan" command).
# (i)	The data below are the number of hours between charging on a particular type of mobile phone.

charging=scan(file = "C:\\Users\\DELL\\Desktop\\Aegis\\R\\ASSIGNMENTs\\ScanData\\charging.txt")

charging

# (ii) The data below are the number of hours spent watching television per week for a sample of 34 households.

watching=scan(file = "C:\\Users\\DELL\\Desktop\\Aegis\\R\\ASSIGNMENTs\\ScanData\\watching.txt")

watching

# (iii)	The data below are the number of miles travelled to and from work each day by a sample of 12 company employees.

travelling=scan(file = "C:\\Users\\DELL\\Desktop\\Aegis\\R\\ASSIGNMENTs\\ScanData\\travelling.txt")

travelling

# (a)	For each data set find the mean, median, standard deviation, quartiles and interquartile range.
# Use the commands

#for charging dataset
summary(charging)
sd(charging)
IQR(charging)


#for watching dataset
summary(watching)
sd(watching)
IQR(watching)


#for travelling dataset
summary(travelling)
sd(travelling)
IQR(travelling)

# (b)	Obtain a boxplot for each dataset.

boxplot(charging)

boxplot(watching)

boxplot(travelling)

# (c)	Obtain a histogram for each dataset.

hist(charging)

hist(watching)

hist(travelling)

# (d)	Obtain a smooth curve through the histogram using the commands

hist(charging,freq=F)
lines(density(charging))

hist(watching,freq=F)
lines(density(watching))

hist(travelling,freq=F)
lines(density(travelling))

# 14.  Obtain and attach the data set "cats" by typing the following:

library(MASS)
data(cats)
attach(cats)

#Plot Hwt (Heart Weight) against Bwt (Body Weight). Choose Bwt to be on the horizontal axis.
plot(Hwt~Bwt)

#Obtain the best straight line through the points using
abline(lm(Hwt~Bwt))

#Type in the R code
boxplot(Hwt~Sex, xlab='gender', ylab='heart weight')

#(use the subcommand horizontal =T if you want a different orientation).

#Similarly, the R code
plot(Hwt~Bwt, xlab='body weight (kg)', ylab='heart weight (g)', type='n')
points(Hwt[Sex=='M']~Bwt[Sex=='M'])
points(Hwt[Sex=='F']~Bwt[Sex=='F'], pch=3)


