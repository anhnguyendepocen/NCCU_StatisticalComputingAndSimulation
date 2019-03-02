n=10000
x=runif(n)
#ex1
sum1=0
for(i in x){
  sum1=sum1+exp(i)
}
#ex1_answer
sum1/n

#ex2
sum2=0
y=runif(n)
for(i in y){
  sum2=sum2+(1/(i^2))*exp(-(1/i-1)^2)
}
#ex2_answer
2*(sum2/n)
