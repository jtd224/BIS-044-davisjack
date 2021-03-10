results <- read.csv("PRESIDENT_precinct_primary.csv")

BIDEN<-0
TRUMP<-0

end<-nrow(results)
for(i in 1:end){
  if(results$candidate[i]=="JOSEPH R BIDEN"){
    BIDEN<-BIDEN+results$botes[1]
  }
  else if(results$candidate[i]=="DONALD J TRUMP"){
    TRUMP<-TRUMP+results$votes[i]
  }
}

cat("Biden: ",BIDEN)
cat("Trump: ",TRUMP)


