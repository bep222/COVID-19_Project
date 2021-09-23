Temp <- getwd()
setwd("./covid-19-data/")
USStates <- read.csv("us-states.csv")
setwd(Temp)

view(USStates)

Pennsylvania <- filter(USStates, "state"=="Pennyslvania")

view(Pennsylvania)

n <- length(Pennsylvania$date)

Pennsylvania$incr_cases <- 1

view(Pennsylvania)

Pennsylvania$incr_deaths <- 2

for(i in 2:n) {
  Pennsylvania$incr_cases[i] <- (Pennsylvania$cases[i]-Pennsylvania$cases[i-1])
}

