library(tidyverse)

survey <- read.csv("city-of-st-louis-survey.csv")
decode <- read.csv("city-of-st-louis-decode.csv")

survey <- select(survey,owner, Land, Area)

firstLetter <- substr(survey$owner,1,1)
firstLetter

survey_reduced<-survey[which(firstLetter=="A"),]

ownerIndex<-match(survey_reduced$Owner, decode$Original.Name)

survey_reduced$Owner[!is.no(owneerIndex)]<-decode$Standardized.Names[ownerIndex[!is.na(ownerIndex)]]

data1<-tapply(survey_reduced$Land.Area, INDEX = survey_reduced$Owner, FUN = sum)

data1Sorted<-sort(data1, decreasing = TRUE)

data1SortedDF<-data.frame(data1Sorted)

head(data1SortedDF, n=10)

