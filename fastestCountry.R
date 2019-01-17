#Get libraries
library(readxl)

#import dataset
rawData <- read.csv("C:/Users/krish/Desktop/fifa19/data.csv")

#filter out unecessary columns
name <- (rawData$'Name')
nationality <- (rawData$'Nationality')
overallStat <- (rawData$Overall)
club <- (rawData$'Club')
position <- (rawData$'Position')
sprintSpeed <- (rawData$SprintSpeed)

df1 <- data.frame(name, nationality, overallStat, club, position, sprintSpeed)
