#merge NEI and SCC then subset data of Baltimore
NEI_SCC_Dataset<-merge(NEI,SCC,by="SCC")
Baltimore<-subset(x = NEI_SCC_Dataset,type =="ON-ROAD" & fips == "24510",select = c("Emissions","year"))

Total_Emission_Baltimore_Motor<-aggregate(x = Baltimore$Emissions,by = list(Baltimore$year),FUN = sum)

png("plot5.PNG")
plot(Total_Emission_Baltimore_Motor$Group.1,Total_Emission_Baltimore_Motor$x,xlab="year",ylab="emission from motor")
dev.off()