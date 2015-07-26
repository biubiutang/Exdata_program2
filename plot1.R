#load data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

#sum emission by year
total_emission<-aggregate(NEI$Emissions,by = list(NEI$year),FUN = sum)

png("plot1.png")
plot(total_emission$Group.1,total_emission$x,xlab="year",ylab="total emission")
dev.off()