#Q.1
pow=function(x,y){
  #function to print x raised to the power y
  result=x^y
  print(result)
}

pow(8,2)
pow(10,2)




#Q.2

check=function(x){
  if(x>0){
    result="Positive"
  }else if(x<0){
    result="Negative"
  }else{
    result="Zero"
  }
  return(result)
}

check(1)
check(-110)
check(0)


#Q.3


multi_return = function() { 
  my_list = list("color" = "red", "size" = 20, "shape" = "round") 
  return(my_list) 
} 
a = multi_return() 

a$color 
a$shape 



#Q.4

recursive.factorial = function(x) { 
  if (x == 0) return (1) 
  else return (x * recursive.factorial(x-1)) 
} 

recursive.factorial(5) 
recursive.factorial(7) 
recursive.factorial(120) 




#Q.5	R program to find the factorial of a number


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


#Q.6	R program to check if the number is prime

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




#Q.7 R program to find the factors of a number


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


