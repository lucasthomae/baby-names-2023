#creating a line plot to chart the popularity of the name Alexa

alexa <-
  nationaldf %>%
  filter(name=="Alexa", sex=="F")

alexaplot <-
  ggplot(alexa, aes(x=year, y=babies)) +
  geom_line() +
  scale_x_continuous(
    limits = c(1972, 2022),
    breaks = seq(1972, 2022, 10),
    name = NULL
  ) +
  scale_y_continuous(
    limits = c(0, 6500),
    breaks = seq(0, 6500, 1500),
    name = "Newborn girls named Alexa"
  ) +
  geom_point(data = alexa[alexa$year == 1985, ],
             shape = 21,
             color = "black",
             fill = "black",
             size = 3) +
  annotate("text",
           x = 1981.3,
           y = 755,
           label = "Billy Joel and \n Christie Brinklie name \n daughter Alexa",
           color = "black",
           size = 2.75,
           fontface = "bold") +
  geom_point(data = alexa[alexa$year == 2014, ],
             shape = 21,
             color = "black",
             fill = "lightblue",
             size = 2.5,
             stroke = 1.2) +
  annotate("text",
           x = 2013,
           y = 3500,
           label = "Amazon releases \n Echo and Alexa \n voice service",
           color = "black",
           size = 2.75,
           fontface = "bold") +
  labs(title = "History of the name Alexa in the U.S.",
       subtitle = "The baby name spiked shortly after the Amazon product was launched then sharply declined.",
       caption = "Source: Social Security Administration") +
  theme_ap(family = "") +
  theme(panel.grid.major.x = element_blank(),
        axis.ticks = element_blank())

#creating a line plot to chart the popularity of the name Isis

isis <-
  nationaldf %>%
  filter(name=="Isis", sex=="F")

isisplot <-
  ggplot(isis, aes(x=year, y=babies)) +
  geom_line() +
  scale_x_continuous(
    limits = c(1972, 2022),
    breaks = seq(1972, 2022, 10),
    name = NULL
  ) +
  scale_y_continuous(
    limits = c(0, 600),
    breaks = seq(0, 600, 200),
    name = "Newborn girls named Isis"
  ) +
  geom_point(data = isis[isis$year == 1974, ],
             shape = 21,
             color = "black",
             fill = "black",
             size = 3) +
  annotate("text",
           x = 1978.75,
           y = 0,
           label = "'Isis' rock band \n releases debut album",
           color = "black",
           size = 2.7,
           fontface = "bold") +
  geom_point(data = isis[isis$year == 1975, ],
             shape = 21,
             color = "black",
             fill = "black",
             size = 3) +
  annotate("text",
           x = 1972.7,
           y = 115,
           label = "'Isis' TV \n show debuts \n on CBS",
           color = "black",
           size = 2.7,
           fontface = "bold") +
  geom_rect(xmin = 2014,
            xmax = 2019,
            ymin = -Inf,
            ymax = 515,
            fill = "pink",
            alpha = 0.01) +
  annotate("text",
           x = 2016.5,
           y = 560,
           label = "The reign of \n the Islamic State \n (ISIS) caliphate",
           color = "black",
           size = 2.7,
           fontface = "bold") +
  labs(
    title = "History of the name Isis in the U.S.",
    caption = "Source: Social Security Administration"
  ) +
  theme_ap(family = "") +
  theme(panel.grid.major.x = element_blank(),
        axis.ticks = element_blank())

#creating a line plot to chart the popularity of the name Kobe

kobe <-
  nationaldf %>%
  filter(name=="Kobe", sex=="M")

kobeplot <-
  ggplot(kobe, aes(x=year, y=babies)) +
  geom_line(color = "orchid3", size = 1.2) +
  scale_x_continuous(
    limits = c(1995, 2022),
    breaks = seq(1996, 2022, 4),
    name = NULL
  ) +
  scale_y_continuous(
    limits = c(0, 1600),
    breaks = seq(0, 1600, 400),
    name = "Newborn boys named Kobe"
  ) +
  geom_point(data = kobe[kobe$year == 1996, ],
             shape = 21,
             fill = "gold",
             color = "orchid3",
             size = 2,
             stroke = 1.2) +
  annotate("text",
           x = 1999,
           y = 150,
           label = "Kobe Bryant is \n drafted into the NBA",
           color = "black",
           size = 3.25) +
  geom_point(data = kobe[kobe$year == 2000, ],
             shape = 21,
             fill = "gold",
             color = "orchid3",
             size = 2,
             stroke = 1.2) +
  annotate("text",
           x = 1997.3,
           y = 1450,
           label = "Kobe Bryant \n wins his first NBA \n Championship",
           color = "black",
           size = 3.25) +
  geom_point(data = kobe[kobe$year == 2020, ],
             shape = 21,
             fill = "gold",
             color = "orchid3",
             size = 2,
             stroke = 1.2) +
  annotate("text",
           x = 2017,
           y = 1450,
           label = "Kobe Bryant dies in \n a helicopter crash",
           color = "black",
           size = 3.25) +
  labs(title = "History of the name Kobe in the U.S.",
       caption = "Source: Social Security Administration") +
  theme_ap(family = "") +
  theme(panel.grid.major.x = element_blank(),
        axis.ticks = element_blank())

#saving these plots in the data folder in the project

ggsave("~/Documents/babynames-2023/viz/alexaplot.png",
       plot = alexaplot,
       width = 8,
       height = 5,
       dpi = 300,
       bg = "white")

ggsave("~/Documents/babynames-2023/viz/isisplot.png",
       plot = isisplot,
       width = 8,
       height = 5,
       dpi = 300,
       bg = "white")

ggsave("~/Documents/babynames-2023/viz/kobeplot.png",
       plot = kobeplot,
       width = 8,
       height = 5,
       dpi = 300,
       bg = "white")
