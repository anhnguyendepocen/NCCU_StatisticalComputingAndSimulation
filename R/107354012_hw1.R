n=10000
x=runif(n)
#hw1
40*mean(exp(-20*x))
  

#hw2
sum2=0
n=10000
s=runif(n)
t=runif(n)
for(i in t){
  for(j in s){
    if(i>j){
      sum2=sum2+exp(-(1/j+1/i-2))*(1/i^2)*(1/j^2)  
    }
  }
}
#hw2_answer
(1/n^2)*sum2
