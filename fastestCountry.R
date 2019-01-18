#import dataset
rawData <- read.csv("C:/Users/krish/Desktop/fifa19/data.csv")

#filter out unecessary columns
name <- (rawData$'Name')
nationality <- (rawData$'Nationality')
sprintSpeed <- (rawData$SprintSpeed)

#create dataframe
df1 <- data.frame(name, nationality, sprintSpeed)

#Remove NA values for sprint speed
df1 <- df1[!is.na(df1$sprintSpeed),]
df1 <- df1[order(df1$nationality, decreasing = FALSE),]

countries <- split(df1, df1$nationality) #group data by country


