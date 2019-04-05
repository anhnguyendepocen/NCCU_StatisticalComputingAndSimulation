lambda=5
#generate an empty array to store simulate poisson number
y=c()
#to generate 10000 poisson number
for (j in 1:10000){
  #generate an empty array to store simulate uniform number
  x=c()
  #define initial values
  s=n=0
  #use exponential distribution to simulate poisson number
  while(s<=1){
    i=1
    #generate uniform number
    x[i]=runif(1)
    #transform x to exponential
    simu_exp=-log(x[i])/lambda
    s=s+simu_exp
    n=n+1
    i=i+1
  }
  #store each simulate poisson number y
  y[j]=n-1
}
#show y
y[1:10]
#check whether mean(y) is equal to lambda
mean(y)
#check whether var(y) is equal to lambda
var(y)