#################Data import/export########################

mydata=matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol = 3,dimnames = list(c(row1,row2,row3),c(col1,col2,col3)))
write.table(mydata,"C:\\Users\\DELL\\Desktop\\Aegis\\R\\ASSIGNMENTs\\ScanData\\Lec.txt",sep = "\t")

write.table(mymatri,"mydata.txt",sep = "\t",row.names=TRUE,col.names=TRUE)

write.csv(mydata,file = "mydata.csv",row.names=TRUE)

getwd()#current working directory

mydata=matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3,ncol = 3, dimnames = list(c(row1,row2,row3),c(col1,col2,col3)))


################################################################################



  

