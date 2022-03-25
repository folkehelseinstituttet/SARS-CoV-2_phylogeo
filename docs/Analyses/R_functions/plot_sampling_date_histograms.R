
library(scales)
str(metadat)
dates <- as.Date(metadat$date)
dates <- as.data.frame(dates)
str(dates)
colnames(dates) <- c('Date')

metadat_N <- subset(metadat, country == "Norway")
dates <- as.Date(metadat$date)
dates <- as.data.frame(dates)
colnames(dates) <- c('Date')
dates$converted <- as.Date(dates$Date, format="%Y-%m-%d")

dates_N <- as.Date(metadat_N$date)
dates_N <- as.data.frame(dates_N)
colnames(dates_N) <- c('Date')
dates_N$converted <- as.Date(dates_N$Date, format="%Y-%m-%d")

ggplot(dates_N, aes(x=converted)) + geom_histogram(binwidth = 7) 


