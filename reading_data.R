
initial <- read.table("database.txt", nrows=100)

#figuring out column classes
classes <- sapply(initial, class)

tabAll <- read.table("database.txt", colClasses = classes)