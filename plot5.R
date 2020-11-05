## QUestion 5
Maryland_Motor <- subset(NEI, fips == "24510" & type == "ON-ROAD")
Maryland_Motor_Sum <- stats::aggregate(Emissions ~ year, Maryland_Motor, sum)
ggplot2::ggplot(Maryland_Motor_Sum, mapping = ggplot2::aes(x = year, y = Emissions))+
  ggplot2::geom_point()+
  ggplot2::geom_line(color = "blue")+
  ggplot2::scale_colour_discrete(name = "Sources of Emission")+
  ggplot2::labs(title = "Coal Emission ", subtitle = "on road", 
                caption = "Source : Environmental Protection Agency (EPA) ")
ggplot2::ggsave("plot5.png", device = "png")
