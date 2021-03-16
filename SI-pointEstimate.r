dat<-c(5.9, 7.2, 7.3, 6.3, 8.1, 6.8, 7.0, 7.6, 6.8, 6.5, 7.0, 6.3, 7.9,9.0, 8.2, 8.7, 7.8, 9.7, 7.4, 7.7, 9.7, 7.8,7.7, 11.6, 11.3, 11.8, 10.7)
m1<-mean(dat)
m2<-median(dat)
s1<-sd(dat)
pcv<-s1/m1
m1
m2
s1
pcv

#problem 2
x<-c(0,1,2,3,4,5,6,7)
f<-c(18, 37, 42, 30, 13, 7, 2, 1)
x_bar<- sum(f*x)/sum(f)
x_bar
se<-sqrt(x_bar/sum(f))
se




set.seed(1)
pop <- rnorm(100000, 8, 2)
length(pop)
hist(pop)
mean(pop)
sampleChamp <- sample(pop,1000, replace=TRUE)
#sampleChamp
mean(sampleChamp)
sampDist <- replicate(100000,mean(sample(pop, 25,replace=TRUE)))
sampDist
hist(sampDist)

x_bar<-2.6
samplesize<-36
s<-0.3
lower<-x_bar-(qnorm(0.975,0,1))*(s/sqrt(samplesize))
upper<-x_bar+(qnorm(0.975,0,1))*(s/sqrt(samplesize))
lower
upper
lower1<-x_bar-(qnorm(0.995,0,1))*(s/sqrt(samplesize))
upper1<-x_bar+(qnorm(0.995,0,1))*(s/sqrt(samplesize))
lower1
upper1