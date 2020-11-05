## Question 3
totalEmisMaryland_2  <- stats::aggregate(Emissions ~ year + type, data = Marylan, FUN = sum)
ggplot2::ggplot(totalEmisMaryland_2, mapping = ggplot2::aes(x = year, y = Emissions, color = type))+
  ggplot2::geom_point()+
  ggplot2::geom_line()+
  ggplot2::scale_colour_discrete(name = "Sources of Emission")+
  ggplot2::labs(title = "Emission in Maryland", subtitle = "According to the type", 
                caption = "Source : Environmental Protection Agency (EPA) ")
ggplot2::ggsave("plot3.png", device = "png")
