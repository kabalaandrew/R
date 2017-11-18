## example
mydata <- rnorm(100)
sd(mydata)
sd(x=mydata, na.rm=FALSE)

args(lm)
## function (formula, data, subset, weights, na.action, method = "qr", 
##         model = TRUE, x = FALSE, y = FALSE, qr = TRUE, singular.ok = TRUE, 
##          contrasts = NULL, offset, ...) 
##   NULL

f <- function(a,b) {
  a^2
}

f(2)