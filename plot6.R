## Question 6
Motor_Em_Comp <- subset(NEI, fips %in% c("24510","06037") & type == "ON-ROAD")
Motor_Comp_Sum <- stats::aggregate(Emissions ~ year + fips, data = Motor_Em_Comp, FUN = sum)
ggplot2::ggplot(Motor_Comp_Sum, mapping = ggplot2::aes(x = year, y = Emissions))+
  ggplot2::geom_point(color = "red")+
  ggplot2::geom_line(ggplot2::aes(color = fips))+
  ggplot2::scale_colour_discrete(name = "City", labels = c("Los Angeles", "Baltimore"))+
  ggplot2::labs(title = "Coal Emission ", subtitle = "Evolution", 
                caption = "Source : Environmental Protection Agency (EPA) ")
ggplot2::ggsave("plot6.png", device = "png")
