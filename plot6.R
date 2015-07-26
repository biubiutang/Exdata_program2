Los<-subset(x = NEI_SCC_Dataset,type =="ON-ROAD" & fips == "06037",select = c("Emissions","year"))
Total_Emission_Los_Motor<-aggregate(x = Los$Emissions,by = list(Los$year),FUN = sum)

png("plot6.PNG")
par(mfrow=c(1,2))
plot(Total_Emission_Los_Motor$Group.1,Total_Emission_Los_Motor$x,xlab = "year",ylab = "emission of motor in Los Angeles")
plot(Total_Emission_Baltimore_Motor$Group.1,Total_Emission_Baltimore_Motor$x,xlab="year",ylab ="emission of motor in Baltimore")
dev.off()
