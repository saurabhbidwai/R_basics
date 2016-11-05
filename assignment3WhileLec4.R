#Q.1 print no from 1 to 5 using 'repeat' and 'break'

f=1
repeat
{
  print(f)
  f=f+1
  if(f==6){
    break()
  }
}


#Q.2 Identify the no. is positive or negative 

neg=function(a){
  if(a>0){
    print("PositiveNumber")
  }
  else if(a<0){
    print("NegativeNumber")
  }else{
    print("ZeroNumber")
  }
}

neg(10)
neg(0)
neg(-10)


#Q.3 print the no from 1 to 10 by using while loop
i=1
while(i<11){
  print(i)
  i=i+1
}


#Q.4 create the vector add the element of that vector and give its sum by using while loop
a=c(1,2,3,4)
w=length(a)
sumw=0
while(w>0){
  sumw=sumw+a[w]
  w=w-1
}
print(sumw)


#Q.5 create the vector add the element of that vector and give its sum by using for loop

a=c(1:10)
sumf=0
for(i in seq(1,length(a))){
  sumf=sumf+a[i]
}
print(sumf)



#Q.6 create the vector and count the no of even no in that vector

a=c(1:10)
flag=0
for(i in seq(1,length(a))){
  if(a[i]%%2==0){
    flag=flag+1
  }
}
print(flag)

#Q.7 find the factorial of no

facto=function(z){
  f=1
  if(z<0){
    print("no is negative")
  }else if(z==0){
    return(1)
  }else{
    for (i in seq(1,z)) {
      f=f*i
    }
    return(f)
  }
}

facto(-2)
facto(0)
facto(1)
facto(3)
facto(10)


#Q.8 no is prime or not?


prime_no=function(a){
  if(a<0){
    return("no is negative")
  }else if(a==1){
    return("neither prime nor composite")
  }
  f=0
  for(i in seq(2,a-1)){
    if(a %% i ==0){
      f=1
      return("not prime")
    }
  }
  if(f==0){
    print("prime")
  }
}

prime_no(-2)
prime_no(20)
prime_no(2)
prime_no(1)
prime_no(19)
prime_no(9)


#Q.9 find the factors of a no.

fact=function(a){
  if(a<0){
    return("no is negative")
  }else if(a==0){
    return("no is zero")
  }else{
    for(i in seq(1,a)){
      if(a %% i ==0){
        print(i)
      }
    }
  }
}

fact(120) 
fact(10)
fact(0)
fact(-10)


################Assignment4######################

#Q.1

plot(1:10,1:10,type = "n")
  for (i in 1:10) {
    lines(c(i,i),c(1,20))
  }
for(j in 1:20){
  lines(c(1,10),c(j,j))
}

    
#Q.2

plot(1:10,1:10)
  for(i in 1:10){
    for (j in 1:20) {
      points(i,j)
      
    }
  }


#Q.3

plot(1:10,1:10)
  for(j in 1:20){
    color=if(j%%2==0){"blue"}else{"red"}
      lines(c(1,10),c(j,j),col=color)
    }
  
#Q.4


plot(1:10,1:10)
for(j in 1:20){
  color=if(j%%3==0){"red"}else if(j%%3==1){"blue"}else if(j%%3==2){"green"}
  lines(c(1,10),c(j,j),col=color)
}


    


