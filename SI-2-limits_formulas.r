# for larger sample
x_bar=2800
y_bar=2700
s1=140
s2=100
n=30
m=40
z_a= 0.995  #for 99%   #(put calculated z_aplha)
me=(qnorm(z_a,0,1)*(sqrt((s1^2/n)+(s2^2/m))))

lower=(x_bar-y_bar)-me
upper=(x_bar-y_bar)+me
print(c(lower,upper))

##  t for small sample
x_bar<-60
S<-15
n<-19
df<-n-1
alpha <-0.05
cv<-qt(1-alpha/2, df)
cl<-x_bar-(S/sqrt(n))*cv
cr<-x_bar+(S/sqrt(n))*cv

##portion of large smaple

p1=0.7
p2=0.5
q1=0.3
q2=0.5
n1=100
n2=100
zv=qnorm(0.975,0,1)
me= zv*(sqrt((p1*q1/n1)+(p2*q2/n2)))
lower_p=(p1-p2)-me
upper_p=(p1-q2)+me

print(c(lower_p,upper_p))

#confidence interval