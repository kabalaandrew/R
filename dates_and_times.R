## Date class
## Times are represented by POSIXct or POSIXlt class
## Dates stored internally as no of dats since 1970-01-01
## Times are stored internally as no of seconds 1970-01-01
x <- as.Date("1970-01-01")
x
##  "1970-01-01"
unclass(x)
## 0 days

unclass(as.Date( "1970-01-02"))
## 1 day

x <- Sys.time()
## "2016-11-17 13:11:16 EAT"

p <- as.POSIXlt(x)

names(unclass(p))
## [1] "sec"    "min"    "hour"   "mday"   "mon"    
## "year"   "wday"   "yday"   "isdst" 
## [10] "zone"   "gmtoff"

p$sec

## strptime
datestring <-c("January 10, 2012 10:40", "December 9, 2011")
x <-strptime(datestring, "%B %d, %Y %H:%M")
x
## [1] "2012-01-10 10:40:00 EAT" NA 
class(x)
## [1] "POSIXlt" "POSIXt"

x <- as.Date("2012-01-01")
y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")

x <- as.POSIXlt(x)

x-y
## Time difference of 356.3 days
