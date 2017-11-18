 ## if

if(x>3) {
  y <- 10
} else {
  y <- 0
}


y <- if(x>3) {
        10
} else {
       0
}

# for loop
for(i in 1:10) {
  print(i)
}

x <- c("a", "b", "c", "d")
for(i in 1:4) {
  print(x[i])
}

for(i in seq_along(x)) {
  print(x[i])
}

for(letter in x) {
  print(letter)
}

for(i in 1:4) print(x[i])

# Nested for loops
x <- matrix(1:6, 2,3)

for(i in seq_len(nrow(x))) {
  for(j in seq_len(ncol(x))) {
    print(x[i, j])
  }
}

# While
count <- 0
while(count < 10) {
  print(count)
  count <- count + 1
}

## next, return
for(i in 1:100) {
  if(i <= 20) {
    ## skip first 20 iterations
    next
    
  } 
}
## return signals that a function should exit and return a given value
