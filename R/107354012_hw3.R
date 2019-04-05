#################ex1
####normal(0,1)
means01=c()
for (i in 1:5000){
  g=rnorm(1000,0,1)
  w=dunif(g,-20,20)/dnorm(g,0,1)
  means01[i]=mean(40*exp(-1*abs(g))*w)
  
  }
mean(means01)
var(means01)

####normal(0,5)
means05=c()
for (i in 1:5000){
  g=rnorm(1000,0,5)
  w=dunif(g,-20,20)/dnorm(g,0,5)
  means05[i]=mean(40*exp(-1*abs(g))*w)
  
}
mean(means05)
var(means05)
####mc method
means_mc=c()
for (i in 1:5000){
  f=runif(1000,-20,20)
  means_mc[i]=mean(40*exp(-1*abs(f)))
  
}
mean(means_mc)
var(means_mc)
x11()
boxplot(means01,means05,means_mc,outline = T,horizontal =FALSE,
        col = c("orange","red",'blue'),xlab='methods',ylab='values',
        main="compare different methods",
        names=c('sample N(0,1)','sample N(0,5)','MC method'))
#################ex2
###(1)
#define indicator function
I_x3=function(x){
  out=c()
  for (i in 1:length(x)){
    if (x[i]>3){
      out[i]=1
    }
    else {
      out[i]=0
    }  
  
  }
  return(out)
}
means2MC=c()
for (i in 1:10^5){
  f=rnorm(100,0,1)
  means2MC[i]=mean(I_x3(f))
}
mean(means2MC)
var(means2MC)
###(2)
means2IS=c()
for (i in 1:10^5){
  g=rnorm(100,4,1)
  w=dnorm(g,0,1)/dnorm(g,4,1)
  means2IS[i]=mean(w*I_x3(g))
}
mean(means2IS)
var(means2IS)

var(means2MC)>var(means2IS)
