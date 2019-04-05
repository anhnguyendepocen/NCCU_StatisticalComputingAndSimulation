library(Deriv)
###ex1
f1=function(x){
  (x^2-2*x+1)
}
f1_diff1=Deriv(f1,'x')

xn=2
while(abs(f1(xn))>10^(-6)){
  xn=xn-(f1(xn)/f1_diff1(xn))
}
xn

###ex2
###gradient
##x0=2
xn=2
rn=0.1
f2=function(x){
  (x^3-2*x^2+2)
}
f2_diff1=Deriv(f2,'x')
f2_diff2=Deriv(f2_diff1,'x')

while(abs(f2_diff1(xn))>10^(-6)){
  xn=xn-rn*(f2_diff1(xn))
  
}
xn
##x0=0.01
xn=0.01
rn=0.1
f2=function(x){
  (x^3-2*x^2+2)
}
f2_diff1=Deriv(f2,'x')
f2_diff2=Deriv(f2_diff1,'x')

while(abs(f2_diff1(xn))>10^(-6)){
  xn=xn-rn*(f2_diff1(xn))
}
xn

#####newtons
##x0=2
xn=2
rn=0.1


while(abs(f2_diff1(xn))>10^(-6)){
  xn=xn-(f2_diff1(xn)/f2_diff2(xn))
}
xn
##x0=0.1
xn=0.01
rn=0.1


while(abs(f2_diff1(xn))>10^(-6)){
  xn=xn-(f2_diff1(xn)/f2_diff2(xn))
}
xn




