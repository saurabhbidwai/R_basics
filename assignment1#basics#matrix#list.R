EMPID=c(101,102,103,104)
NAME=c("A","B","C","D")
AGE=c(31,35,33,35)
INCOME=c(25000,35000,38000,37000)
empdataframe=data.frame(EMPID,NAME,AGE,INCOME)
empdataframe

empdataframe[c(1,2)]


a=c(1,2,3,4,5,6,7,8,9,10,11,12)
x.mat=matrix(a,nrow = 3,ncol = 4)
row1=c("r1","r2","r3")
col1=c("c1","c2","c3","c4")
dimnames(x.mat) = list(row1,col1)
x.mat


xx=cbind(x.mat,x.mat)
xx

xxx=rbind(x.mat,x.mat,x.mat)
xxx


x=c(1,2,3,4,5,6,7,8,9,10)
names(x)=letters[x]
x

x[1:3]

x[c(1:10)]


x[c(1,10)]

x[x>5]

x[c("a","d")]

x[]

jj1=matrix(1:100,ncol = 10)
jj1

jj1[1:5,]

jj1[1:4,x[x<3]]





x.lis=list(a=1:10,b=letters[1:3],c=matrix(1:10,ncol = 2))
x.lis


x.lis[[2]]

x.lis[[3]][,1]







xx.mat=matrix(1:10,ncol = 2)
xx.mat

xx.mat+1

xx.mat+xx.mat

xx.mat%*%t(xx.mat)



