gapM <- read.table(file = "output/combined_gapMinder.tsv", sep = "\t", header = TRUE)
gapM$year
str(gapM$year)
plot(gapM$pop, gapM$lifeExp, main = "Gapminder", xlab = "Population", ylab = "Life")

## Subset the data for gapM$pop >=10000