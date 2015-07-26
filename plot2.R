# subset data from Baltimore city and aggregate by year
Emission_Baltimore<-subset(NEI,fips == "24510",select = c(Emissions,year))
Total_Emission_Baltimore<-aggregate(Emission_Baltimore$Emissions,by=list(Emission_Baltimore$year),FUN = sum)

#make plots and save picutre
png("plot2.png")
plot(Total_Emission_Baltimore$Group.1,Total_Emission_Baltimore$x,main = "PM2.5 in Baltimore",xlab="year",ylab="total emission")
dev.off()