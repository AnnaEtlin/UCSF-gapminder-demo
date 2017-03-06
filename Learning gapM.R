gapM <- read.table(file = "output/combined_gapMinder.tsv", sep = "\t", header = TRUE)
gapM$year
str(gapM$year)
plot(gapM$pop, gapM$lifeExp, main = "Gapminder", xlab = "Population", ylab = "Life")

## Subset the data for gapM$pop >=100000000
gapMLargePop <- gapM[gapM$pop >= 100000000,]
## Plot subset data
plot(gapMLargePop$pop, gapMLargePop$lifeExp, main = "Gapminder", xlab = "Population", ylab = "Life")


##aggregate() the same as PivotTable in Excel
agg_country_gapM <- aggregate(.~country, data=gapM, FUN=mean)  
##group all data for each country one row as mean for each column

agg_pop_country_gapM <- aggregate(pop~country, data=gapM, FUN=mean)
##group only population data for each country one row as mean

agg_poplife_country_gapM <- aggregate(cbind(pop,lifeExp)~country, data=gapM, FUN=mean)
##group population & lifeExp data for each country one row as mean