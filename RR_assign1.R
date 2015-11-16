library(data.table)
activity <- read.csv(file="~/Downloads/activity.csv", header=TRUE)

#check to see the file loaded correctly and get some understanding of the data
head(activity)
dim(activity)
summary(activity)

activity.dt <- data.table(activity)
# determine the total number of steps taken for each date
total <- activity.dt[,lapply(.SD,sum),by="date",.SDcols=1]
hist(total$steps, xlab="steps")
# determine the mean steps for each date
total <- activity.dt[,lapply(.SD,mean),by="date",.SDcols=1]
hist(total$steps, xlab="mean")
# determine the median steps for each date
total <- activity.dt[,lapply(.SD, function(x) as.numeric(median(x))),by="date",.SDcols=1]
hist(total$steps, xlab="median")

total <- activity.dt[,lapply(.SD,mean),by="interval",.SDcols=1:3]


# set up activity
steps <- activity$steps
date <- as.Date(as.character(steps_day$date))
interval <-activity$interval


# mean steps per day for all
m <- mean(activity$steps, na.rm = TRUE)

day1 <- activity$steps[activity$date == "2012-10-01"]
day2 <- activity$steps[activity$date == "2012-10-02"]
day3 <- activity$steps[activity$date == "2012-10-03"]
day4 <- activity$steps[activity$date == "2012-10-04"]

m_day1 <- mean(day1, na.rm = TRUE)
m_day2 <- mean(day2, na.rm = TRUE)
m_day3 <- mean(day3, na.rm = TRUE)
m_day4 <- mean(day4, na.rm = TRUE)


print(m)
print(m_day1)
print(m_day2)
print(m_day3)
print(m_day4)


