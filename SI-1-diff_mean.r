x_bar=1250
sd<-150
n=100
zl<-x_bar-qnorm(0.975,0,1)*(sd/sqrt(n))
zr<-x_bar+qnorm(0.975,0,1)*(sd/sqrt(n))

print(zl)
print(zr)

x_bar=540
sd<-150
n=81
zl_1<-x_bar-qnorm(0.95,0,1)*(sd/sqrt(n))
zr_2<-x_bar+qnorm(0.95,0,1)*(sd/sqrt(n))

print(zl_1)
print(zr_2)

######

data("mtcars")
sample.mean <- mean(mtcars$wt)
print(sample.mean)
sample.n <- length(mtcars$wt)
sample.sd <- sd(mtcars$wt)
sample.se <- sample.sd/sqrt(sample.n)

print(sample.se)
alpha = 0.05        ####  95%
degrees.freedom = sample.n - 1
t.score = qnorm(p=1-(alpha/2),0,1)



print(t.score)
margin.error <- t.score * sample.se
lower.bound <- sample.mean - margin.error
upper.bound <- sample.mean + margin.error
print(c(lower.bound,upper.bound))




s1=200
s2=300
n_1=50
n_2=100

#fomrula
sig=sqrt(((s1^2/n_1)+(s2^2/n_2)))

m1=4500
m2=4000

xdiff=  abs(m1-m2)
me=qnorm(0.995,0,1)*sig

left=xdiff-me
right=xdiff+me
print(c(left,right))