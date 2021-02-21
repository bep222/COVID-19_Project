Temp <- getwd()

setwd("./covid-19-data/")

USStates <- read.csv("us-states.csv")

setwd(Temp)

Pennsylvania <- filter(USStates, "state"=="Pennyslvania")

Pennsylvania$adj_deaths <- 0

adj_deaths <- ("adj_deaths"-filter("state","New York""Kansas City, Mo.""Joplin, Mo.""Alaska""Alameda County, Calif.""Douglas County, Neb.""Chicago""Guam""Puerto Rico")

If(Pennsylvania$date=="21-04-2020") [Pennsylvania$adj_deaths <- (Pennsylvania$adj_deaths -282)]

If(Pennsylvania$date=="22-04-2020") [Pennsylvania$adj_deaths <- (Pennsylvania$adj_deaths -297)]

SUM(Pennsylvania$adj_deaths)
