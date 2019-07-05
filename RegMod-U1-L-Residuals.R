# RegMod-U2-L-Residuals

plot(child ~ parent, galton)

# first argument is formula andthe second is dataset
regrline <- lm(child ~ parent, galton)

# add the regression line to the plot
abline(regrline, lwd=3, col='red')
summary(regrline)

# Call:
# lm(formula = child ~ parent, data = galton)

# Residuals:
#     Min      1Q  Median      3Q     Max 
# -7.8050 -1.3661  0.0487  1.6339  5.9264 

# Coefficients:
#             Estimate Std. Error t value Pr(>|t|)    
# (Intercept) 23.94153    2.81088   8.517   <2e-16 ***
# parent       0.64629    0.04114  15.711   <2e-16 ***
# ---
# Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

# Residual standard error: 2.239 on 926 degrees of freedom
# Multiple R-squared:  0.2105,	Adjusted R-squared:  0.2096 
# F-statistic: 246.8 on 1 and 926 DF,  p-value: < 2.2e-16

# A coefficient will be within 2 standard errors of its estimate about 95% of the
# time. This means the slope of our regression is significantly different than either
# 0 or 1 since (.64629) +/- (2*.04114) is near neither 0 nor 1.

# This lesson will focus on the residuals, the distances between the actual children's
# heights and the estimates given by the regression line.

fit <- lm(child ~ parent, galton)
fit$residuals
summary(fit)

# check the mean of fit$residuals to see if it's close to 0.
mean(fit$residuals)
# [1] -2.359884e-15

# extract the intercept
ols.ic <- fit$coef[1]
# extract the slope
ols.slope <- fit$coef[2]

# You could also use the R to test for equality.
# a = c(1,2,3)
# b = c(1,2,3)
all.equal(a,b)
# [1] TRUE

# calculate the variance in the children's heights 
varChild <- var(galton$child)
varRes <- var(fit$residuals)

# Recall that the function "est" calculates the estimates (y-coordinates) of values
# along the regression line defined by the variables "ols.slope" and "ols.ic". Compute
# the variance in the estimates and store it in the variable varEst.
varEst <- var(est(ols.slope, ols.ic))

# compare varChild and the sum of varRes and varEst.
all.equal(varChild,varEst+varRes)
# [1] TRUE

# Since variances are sums of squares (and hence always positive), this equation which
# we've just demonstrated, var(data)=var(estimate)+var(residuals), shows that the
# variance of the estimate is ALWAYS less than the variance of the data.

# verify the residuals are uncorrelated with the magnitude predictor, attenu$mag.
cov(efit$residuals, attenu$mag)
# [1] 5.338694e-17 almost zero



