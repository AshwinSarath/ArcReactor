
#EXP4
# MLE
#AIM:  To estimate the parameter of the binomial distribution using maximum likelihood estimation in R
#      To estimate the parameters of the normal distribution using maximum likelihood estimation in R


#(1)
set.seed(1001) # even its randomly generated, the randomness remains the same
N=100
x=rnorm(N,mean=3,sd=2)  # norm data for generating 100 data points
x
mean(x)
sd(x)
LL<-function(mu,sigma){
  R=dnorm(x,mu,sigma); 
  return( -sum(log(R))  )  #return val   
} #negative log likely-hood (-sum(log(R)))
LL
library(stats4)
mle(LL,start=list(mu=1,sigma=1))
mle(LL,start=list(mu=1,sigma=1),method='L-BFGS-B',lower=c(-Inf,0),upper=c(Inf,Inf))  # y plane

#(2)

#MLE for Binomial Dist

set.seed(22)
heads<-rbinom(1,100,0.5);heads
likelihood<-function(p){
  dbinom(heads,100,p)
}
neg_liklihood<-function(m){
  dbinom(heads,100,m)*(-1)  #test
  
}
nlm(neg_liklihood,0.5,stepmax = 0.5)