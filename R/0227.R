10%%5

seed=1
m=2^31
seed=(((2^16)+3)*seed)%%m
seed/m


?randu

randu()

?double
seed <- as.double(1)
RANDU <- function() {
  seed <<- ((2^16 + 3) * seed) %% (2^31)
  seed/(2^31)
}
for(i in 1:20) {
  U <- c(RANDU(), RANDU(), RANDU(), RANDU(), RANDU())
  print(round(U[1:3], 6))
}




??unif


u <- runif(20)
exp(u)


n=10000
x=runif(n)

sum1=0
for(i in x){
  sum1=sum1+exp(i)
}
sum1/n


sum2=0
y=runif(n)
for(i in y){
  sum2=sum2+(1/(i^2))*exp(-(1/i-1)^2)
}
2*(sum2/n)




