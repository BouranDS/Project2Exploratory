## Question 4
SCC_coalEm <- SCC[grepl("coal", SCC$Short.Name, ignore.case = T),]
NEI_coalEm <- NEI[NEI$SCC %in% SCC_coalEm$SCC,]
Coal_Em    <- stats::aggregate(Emissions ~ year + type, NEIcoal, sum)
ggplot2::ggplot(Coal_Em, mapping = ggplot2::aes(x = year, y = Emissions, color = type))+
  ggplot2::geom_point()+
  ggplot2::geom_line()+
  ggplot2::scale_colour_discrete(name = "Sources of Emission")+
  ggplot2::labs(title = "Coal Emission ", subtitle = "According to the type", 
                caption = "Source : Environmental Protection Agency (EPA) ")
ggplot2::ggsave("plot4.png", device = "png")
