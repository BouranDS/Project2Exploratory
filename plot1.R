## Question 1
#help("aggregate")
totalEmis  <- stats::aggregate(Emissions ~ year, data = NEI, FUN = sum )
png(filename = "plot1.png")
with(totalEmis,
     {
       plot(year, Emissions, type = "l", col = "skyblue")
       points(year, Emissions, pch = 19, col = year)
       title(main = "Total Emission per year ")
     }
)
dev.off()
