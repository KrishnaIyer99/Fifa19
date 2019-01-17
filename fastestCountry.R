#import dataset
rawData <- read.csv("C:/Users/krish/Desktop/fifa19/data.csv")

#filter out unecessary columns
name <- (rawData$'Name')
nationality <- (rawData$'Nationality')
overallStat <- (rawData$Overall)
club <- (rawData$'Club')
sprintSpeed <- (rawData$SprintSpeed)

#create dataframe
df1 <- data.frame(name, nationality, overallStat, club, sprintSpeed)

#Remove NA values for sprint speed
df1 <- df1[!is.na(df1$sprintSpeed),]
df1 <- df1[order(df1$sprintSpeed, decreasing = TRUE),]

countries <- data.frame(unique(nationality)) #removes duplicates
