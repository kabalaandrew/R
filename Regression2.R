# Data diamonds prices (dollars) , diamond weight (carats)

library(UsingR)
data(diamond)
plot(diamond$carat, diamond$price,
     xlab = "Mass (carats)",
     ylab = "Price (SIN $)",
     bg = "lightblue",
     col = "black", cex = 1.1, pch=21, frame = FALSE)

abline(lm(price ~ carat, data = diamond), lwd = 2)

# fitting the linear regression model

fit <- lm(price ~ carat, data = diamond)
coef(fit)

##(Intercept)       carat 
##-259.6259   3721.0249 
## expected 3721 dollar increase in price for every carat increase in mass
## of diamond
## intercept -259.6259 is expected price of a 0 carat diamond

fit2 <-lm(price ~ I(carat - mean(carat)), data = diamond)
coef(fit2)
# (Intercept) I(carat - mean(carat)) 
# 500.0833              3721.0249 
# $500.1 is expected price for the average sized diamond of 
# the data(0.2042 carats)
# 1/10th of a carat increase we divide coeff by 10
# we expect 372.102 dollar change in price for every 1/10th of carat increase
fit3 <- lm(price ~ I(carat*10), data = diamond)
coef(fit3)

#predicting the price of diamond
newx <- c(0.16, 0.27, 0.34)
predict(fit, newdata = data.frame(carat = newx))

# creating residuals
y <- diamond$price; x <- diamond$carat; n <- length(y)
fit <- lm(y ~ x)
e <- resid(fit)
yhat <- predict(fit)
max(abs( - (y-yhat)))

# heteroskedacticity
plot(x, y); abline(fit)
#plotting residual fit
plot(x, e)
abline(h=0)

#variance estimate (residual variation)
summary(fit)$sigma


