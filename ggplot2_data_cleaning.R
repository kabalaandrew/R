housing <- read.csv("land.csv")
head(land)

#Data cleaning
housing$Year <- as.numeric(substr(housing$Date,1,4))
housing$Qtr <- as.numeric(substr(housing$Date,5,5))
housing$Date <- housing$Year + housing$Qtr/4
# removing commas and $ sings
housing$Home.Value <- gsub('\\$', '', housing$Home.Value)
housing$Home.Value <- gsub(',', '', housing$Home.Value)
housing$Structure.Cost <- gsub('\\$', '', housing$Structure.Cost)
housing$Structure.Cost <- gsub(',', '', housing$Structure.Cost)
housing$Land.Value <- gsub('\\$', '', housing$Land.Value)
housing$Land.Value <- gsub(',', '', housing$Land.Value)

housing$Home.Value <- as.numeric(housing$Home.Value)
housing$Structure.Cost <- as.numeric(housing$Structure.Cost)
housing$Land.Value <- as.numeric(housing$Land.Value)

#Histogram
library(ggplot2)
ggplot(housing, aes(x=Home.Value)) + geom_histogram()

#colored scatter-plot


