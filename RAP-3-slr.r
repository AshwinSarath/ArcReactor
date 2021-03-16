importing cars data set
cars

summary(cars)

# Estimation of Regression Coefficients

speed=cars$speed
speed_bar=mean(speed)
speed_bar

dist=cars$dist
dist_bar=mean(dist)
dist_bar

s_speed=sd(speed)
s_speed
s_dist=sd(dist)
s_dist
r=cor(speed,dist)
r

b1=r*(s_dist/s_speed)
b1
bo=dist_bar-b1*speed_bar
bo
plot(speed, dist, ylab = "Car Stopping Distance (ft)", xlab = "Speed (mph)", main = "Car Speed vs. Stopping Distance")

# Simple Linear Regression Model
SLR=lm(dist~speed)
SLR
abline(SLR,col="red")

# Normal Distribution Assumption of Error Term



residual=SLR$residuals
residual
hist(residual)



# Homoscedasticity Assumption



plot(SLR$residuals ~ speed)
abline(0,0)

anova(SLR)



Ft=qf(0.95, df1 = 1, df2 = 48)
Ft



pv=1-pf(89.567, 1, 48)
pv

# Confidence and Prediction Intervals



confint(SLR, level = .95)




# Prediction and confidence intervals for the stopping distance when the speed is 15 mph



newdata = data.frame(speed = 15)
newdata
conf = predict(SLR, newdata, interval = "confidence")
conf
pred = predict(SLR, newdata, interval="predict")
pred




