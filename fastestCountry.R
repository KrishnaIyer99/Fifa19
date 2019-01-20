#import dataset
rawData <- read.csv("C:/Users/krish/Desktop/fifa19/data.csv")

#filter out unnecessary columns
name <- (rawData$'Name')
nationality <- (rawData$'Nationality')
sprintSpeed <- (rawData$SprintSpeed)


#create dataframe
df1 <- data.frame(name, nationality, sprintSpeed)

#Remove NA values for sprint speed
df1 <- df1[!is.na(df1$sprintSpeed),]
df1 <- df1[order(df1$nationality, decreasing = FALSE),]

countries <- split(df1, df1$nationality) #group data by country

country <- unique(df1$nationality)
numPlayers <- vector()
average <- vector()
stdDeviation <- vector()
maxSpd <- vector()
minSpd <- vector()

#collect sample size, average, standard deviation, max and min speeds of each country
for(i in c(1:length(countries))){
  numPlayers[i] <- length(countries[[i]]$sprintSpeed) 
  average[i] <- mean(countries[[i]]$sprintSpeed)
  stdDeviation[i] <- sd(countries[[i]]$sprintSpeed)
  maxSpd[i] <- max(countries[[i]]$sprintSpeed)
  minSpd[i] <- min(countries[[i]]$sprintSpeed) 
}

countryStats <- data.frame(country, numPlayers, average, stdDeviation, maxSpd, minSpd) 
countryStats <- countryStats[!is.na(countryStats$stdDeviation),] #remove countries with only 1 player

#Tanzania has the highest mean and the lowest standard deviation (but only 3 players) - 11 players minimum
#Tanzania mean = 82.33333 and Standard Deviation = 1.527525








