survey <- read.csv("city-of-st-louis-survey.csv")
decode <- read.csv("city-of-st-louis-decode.csv")

survey <- select(survey,owner, Land, Area)

survey$First <- substr(survey$owner,1,1)
survey$First

survey_A <-survey[which(survey$First == "A")]

YT_Sample_validated <- merge(out2, YT_Sample_validated, by.x="id", by.y="id")
