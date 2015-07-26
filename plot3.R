library(ggplot2)
#subset data of Baltimore city
Data_Baltimore<-subset(NEI,fips == "24510",select = SCC:year)

#aggerate emissions by type
Emission_Baltimore_type<-aggregate(Data_Baltimore$Emissions,by = list(Data_Baltimore$type,Data_Baltimore$year),FUN = sum )

#ggplot2 system
png("plot3.png")
g<-ggplot(data = Emission_Baltimore_type,aes(x=Group.2,y=x))
g+geom_point()+facet_grid(.~Group.1)+xlab(label = "year")+ylab(label = "Emission per type in Maryland")
dev.off()