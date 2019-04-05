##ex1
i=0:500
ti=i/500
z=rnorm(501,0,1)
x=z*sqrt(1/500)
x[1]=0
w=cumsum(x)

plot(ti, w, type = "l",main = "simulate standard brownian motion",xlab= "time",ylab = "value")

##ex2
mu=5
sigma_sq=2
i=0:500
ti=i/500
z=rnorm(501,0,1)
x=z*sqrt(1/500)*sqrt(sigma_sq)+mu*(1/500)
x[1]=0
w=cumsum(x)
plot(ti, w, type = "l",main = "simulate brownian motion",xlab= "time",ylab = "value")