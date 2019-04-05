###hw1
c=(2/sqrt(2*pi))*exp(1/2)
x=c()
i=0
while(length(x)<10000){
  y=rexp(1)
  u=runif(1)
  #define threshold
  threshold=2*dnorm(y,0,1)/(c*dexp(y,1))
  if(u<=threshold){
    if(i%%2==0){
      x[i]=-1*y 
      i=i+1
    }
    else{
      x[i]=y 
      i=i+1
    }
  }
}
x
#plot density of reality normal distribution and simulate number to compare the difference 
plot(density(rnorm(1000)),col=3,main='normal')
lines(density(x),col=2)
legend("topright",pch=c(15,15),legend=c("simulate","reality"),col=c(2,3),bty="n")
mean(x)
var(x)
##hw2
g=rt(10000,3)
w=dnorm(g,0,1)/dt(g,3)
mean(g*w)
##hw3
g=rnorm(10000,0,1)
w=dt(g,3)/dnorm(g,0,1)
mean(g*w)

