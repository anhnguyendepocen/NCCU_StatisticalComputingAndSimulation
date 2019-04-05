
##I_1
#use non Monte Carlo
N=5^5
v=10^5
a=c(-3,-1,1,3,5)
hf=c()

k=0
for(i1 in 1:5){
  for (i2 in 1:5){
    for (i3 in 1:5){
      for(i4 in 1:5){
        for(i5 in 1:5){
          k=k+1
          hf[k]=((a[i1]*a[i2]*a[i3]*a[i4]*a[i5])^2)*(dnorm(a[i1])*dnorm(a[i2])*dnorm(a[i3])*dnorm(a[i4])*dnorm(a[i5]))
        }
      }
    }
  }
}
I_1=v*mean(hf)
I_1
##I_2
#use Monte Carlo
N=5^5
h=c()
for (i in 1:N){
  h[i]=(rnorm(1)*rnorm(1)*rnorm(1)*rnorm(1)*rnorm(1))^2
}
I_2=mean(h)
I_2