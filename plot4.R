#coal related SCC
SCC_Coal<-SCC[grep("Coal",SCC$Short.Name),]

#merge NEI and SCC
NEI_SCC<-merge(NEI,SCC_Coal,by="SCC")
Coal_emission<-aggregate(x = NEI_SCC$Emissions,by = list(NEI_SCC$year),FUN = sum)

#plot
png("plot4.PNG")
plot(x = Coal_emission$Group.1,y=Coal_emission$x,xlab="year",ylab="Emission related with coal")
dev.off()