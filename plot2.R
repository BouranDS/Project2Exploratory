## Question 2
Marylan <-subset(NEI, fips == "24510")
totalEmisMaryland  <- stats::aggregate(Emissions ~ year, data = Marylan, FUN = sum )
png(filename = "plot2.png")
with(totalEmisMaryland,
     {
       plot(year, Emissions, type = "l", col = "skyblue")
       points(year, Emissions, pch = 10, col = year)
       title(main = "Total Emission per year in Maryland")
     }
)
dev.off()
