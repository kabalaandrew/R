## Subsetting part 1
x <-c("a", "b", "c", "c","d", "a")
x[1]
## a

x[1:4]
## "a" "b" "c" "c"

x[x > "a"]
## "b" "c" "c" "d"

u <- x > "a"
## FALSE  TRUE  TRUE  TRUE  TRUE FALSE

x[u]
## "b" "c" "c" "d"

x <- matrix(1:6, 2, 3)
x
#       [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6
x[2,1]

# 2
x[1,]
# 1 3 5


## subsetting lists
x <- list(foo = 1:4, bar = 0.6)
x[1]
# $foo
# [1] 1 2 3 4
x[[1]]
# 1 2 3 4

x[["bar"]]
# 0.6

# subsetting Nested elements
x <- list(a = list(10,12,14), b=c(3.14, 2.81))
x[[c(1,3)]]
## 14
x[[1]][[3]]
## 14

# Removing NA values
x <- c(1, 2, NA, 4, NA, 5)
bad <- is.na(x)
bad
# FALSE FALSE  TRUE FALSE  TRUE FALSE
x[!bad]

# 1 2 4 5

# using the complete cases to remove NAs

y <- c("a", "b", NA, "d", NA, "f")
good <- complete.cases(x,y)
good
x[good]
# 1 2 4 5
y[good]
# "a" "b" "d" "f"

# airquality example for removing NAs

airquality[1:6,]

good <- complete.cases(airquality)
airquality[good, ][1:6,]
