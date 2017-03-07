gapM <- read.table(file = "output/combined_gapMinder.tsv", sep = "\t", header = TRUE)

gapM_1 <- subset(gapM, country == "Algeria")
plot(gapM_1$year, gapM_1$gdpPercap, main = "Algeria GDP per Year", xlab = "year", ylab = "GDP")

gapM_2 <- subset(gapM, country == "Chile")
plot(gapM_2$year, gapM_2$gdpPercap, main = "Chile GDP per Year", xlab = "year", ylab = "GDP")

gapM_3 <- subset(gapM, country == "Ecuador")
plot(gapM_3$year, gapM_3$gdpPercap, main = "Ecuador GDP per Year", xlab = "year", ylab = "GDP")