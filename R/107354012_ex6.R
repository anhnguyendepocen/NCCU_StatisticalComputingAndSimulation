

#####define Gradient descent function
##f=function
##df1=1st differential function
##x0=initial value
##rn=learning rate
##tol=tolerance
##maxiter=max iteration times
Gradient=function(f,df1,x0,rn,tol=10^(-6),maxiter=50){
  xn=x0
  i=0
  while(abs(df1(xn))>tol){
    xn=xn-rn*(df1(xn))
    i=i+1
    if(i>maxiter){
      print('exceed max iteration times')
      break
      }
  }
  #return(c(xn,i))
  return(paste("answer value=",xn,"iteration times=",i))
}

f=function(x){(x^3-2*x^2+2)}
f_df1=function(x){(3*x^2-4*x)}
f_df2=function(x){(6*x-4)}


#####define newton function
##f=function
##df1=1st differential function
##df2=2nd differential function
##x0=initial value
##tol=tolerance
##maxiter=max iteration times
##findmin= want to fin min or not
Newton=function(f,df1,df2,x0,tol=10^(-6),maxiter=50,findmin=T){
  xn=x0
  i=0
  if (findmin){
    while(abs(df1(xn))>tol || df2(xn)<0){
    xn=xn-(df1(xn)/df2(xn))
    i=i+1
    if(i>maxiter){
      print('exceed max iteration times')
      break
    }
    }
  }
  else{
    while(abs(df1(xn))>tol){
    xn=xn-(df1(xn)/df2(xn))
    i=i+1
    if(i>maxiter){
      print('exceed max iteration times')
      break
    }
  }
  }
  #return(c(xn,i))
  return(paste("answer value=",xn,"iteration times=",i))
}
Gradient(f=f,df1 =f_df1,x0=2,rn=0.1)
# "answer value= 1.33333353361244 iteration times= 28"

Gradient(f=f,df1 =f_df1,x0=0.01,rn=0.1)
# "answer value= 1.33333317851346 iteration times= 46"

Newton(f=f,df1 =f_df1,df2=f_df2,x0=2,tol=10^(-6),maxiter=10000,findmin=T)

# "answer value= 1.33333336430743 iteration times= 4"

Newton(f=f,df1 =f_df1,df2=f_df2,x0=0.01,tol=10^(-6),maxiter=10000,findmin=T)

#"exceed max iteration times"
#"answer value= 0 iteration times= 10001"
