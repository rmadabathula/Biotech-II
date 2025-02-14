install.packages("tidyverse")
install.packages(ggplot2)
library(ggplot2)
data(mpg)
View(mpg)
ggplot(data = mpg)
ggplot(mpg, mapping = aes(x = cty, y = hwy))
ggplot(mpg, aes(cty, hwy)) + 
  geom_point() + 
  geom_smooth(formula = y ~ x, method = "lm")

ggplot(mpg, aes(cty, hwy)) +
  geom_point() +
  labs(x = "Cities",
       y = "Highways",
       title = "Cities vs Highways")

ggplot(mpg, aes(cty, hwy)) +
  geom_point() +
  geom_smooth(formula = y ~ x, method = "lm")
  labs(x = "Cities",
       y = "Highways",
       title = "Cities vs Highways")
  
ggplot(mpg, aes(displ, year)) +
  geom_boxplot() +
  labs(x = "Dis",
       y = "Years",
       title = "Dis vs Years")
  
ggplot(mpg, aes(displ, year)) +
  geom_point() +
  labs(x = "Dis",
       y = "Years",
       title = "Dis vs Years")

ggplot(mpg, aes(displ, year)) +
  geom_area() +
  labs(x = "Dis",
       y = "Years",
       title = "Dis vs Years")

ggplot(mpg, aes(displ, cyl)) +
  geom_point() +
  geom_smooth(formula = y ~ x, method = "lm")
  labs(x = "Dis",
       y = "Cyls",
       title = "Dis vs Cyl")
  
  ggplot(mpg, aes(cty, hwy, color = class)) +
    geom_point() +
    scale_color_viridis_d()
  
  ggplot(mpg, aes(displ, cyl, color = class)) +
    geom_point() +
    geom_smooth(formula = y ~ x, method = "lm") +
    scale_color_viridis_d()

  ggplot(mpg, aes(cty, hwy, color = class)) +
    geom_point() +
    facet_grid(model ~ trans) +
    scale_color_viridis_d() +
    labs(x = "Cities",
         y = "Highways",
         title = "Cities vs Highways")
 
  
  ggplot(mpg, aes(displ, cyl, color = class)) +
    geom_point() +
    facet_grid(manufacturer ~ model) +
    scale_color_viridis_d() +
    labs(x = "Dis",
         y = "Cys",
         title = "Dis vs Cys")                        

  ggplot(mpg, aes(cty, hwy)) + 
    geom_point() +
    coord_fixed()

  ggplot(mpg, aes(cty, hwy, color = class)) +
    geom_point() +
    coord_fixed(5)
   
ggplot(mpg, aes(cty, hwy, color = class)) +
    geom_point() +
    coord_fixed(5) +
    theme_bw()
  
ggplot(mpg, aes(cty, hwy, color = class)) +
  geom_point() +
  coord_fixed(5) +
  theme_classic() 
  
ggplot(mpg, aes(cty, hwy, color = class)) +
  geom_point() +
  coord_fixed(5) +
  theme_dark()
  
ggplot(mpg, aes(cty, hwy, color = class)) +
  geom_point() +
  coord_fixed(5) +
  theme_get() 

ggplot(mpg, aes(cty, hwy, color = class)) +
  geom_point() +
  coord_fixed(5) +
  theme_linedraw()  
  
ggplot(mpg, aes(cty, hwy, colour = class)) +
  geom_point() +
  theme_minimal() +
  theme(
    legend.position = "top",
    axis.line = element_line(linewidth = 0.75),
    axis.line.x.bottom = element_line(colour = "red"),
    axis.line.y.left = element_line(colour = "red")
  )

ggplot(mpg, aes(cty, hwy, colour = manufacturer)) +
  geom_point() +
  geom_smooth(formula = y ~ x, method = "lm") +
  scale_color_viridis_d() +
  coord_fixed(0.88) +
  labs(x = "Cities",
       y = "Highways",
       title = "Cities vs Highways") +
  theme_classic() +
  theme(
    legend.position = "bottom",
    axis.title = element_text(size = 20),
    axis.text = element_text(size = 17),
    axis.line = element_line(linewidth = 2),
    panel.grid.major = element_line(colour = "red"),
    panel.grid.minor = element_line(colour = "red"),
    axis.line.x.bottom = element_line(colour = "yellow"),
    axis.line.y.left = element_line(colour = "yellow"),
    plot.title = element_text(hjust = .5, size = 16)
  )
    


ggplot(mpg, aes(cty, hwy, colour = class, shape = factor(cyl))) +
  geom_violin() +
  scale_color_viridis_d() +
  labs(x = "Cities",
       y = "Highways",
       title = "Cities vs Highways") +
  coord_fixed(1) +
  theme_classic() +
  theme(
    legend.position = "bottom",
    axis.title = element_text(size = 20),
    axis.text = element_text(size = 17),
    axis.line = element_line(linewidth = 2),
    panel.grid.major = element_line(colour = "red"),
    panel.grid.minor = element_line(colour = "red"),
    axis.line.x.bottom = element_line(colour = "yellow"),
    axis.line.y.left = element_line(colour = "yellow"),
    plot.title = element_text(hjust = .5, size = 16)
  )

ggplot(mpg, aes(x = cty, y = hwy, fill = class)) +
  geom_violin(alpha = 0.7) + 
  scale_fill_viridis_d() +  
  labs(x = "City Mileage (mpg)",
       y = "Highway Mileage (mpg)",
       title = "City vs Highway Mileage Across Car Classes") +
  coord_fixed(1) +  
  facet_wrap(~ year) +  
  theme_classic() +
  theme(
    legend.position = "bottom",
    axis.title = element_text(size = 10),
    axis.text = element_text(size = 10),
    axis.line = element_line(linewidth = 1),
    panel.grid.major = element_line(colour = "white"),
    panel.grid.minor = element_line(colour = "white"),
    axis.line.x.bottom = element_line(colour = "black"),
    axis.line.y.left = element_line(colour = "black"),
    plot.title = element_text(hjust = .5, size = 10)
  )


ggplot(mpg, aes(displ, cyl, colour = trans)) +
  geom_bar() +
  scale_color_viridis_d() +
  labs(x = "Dis",
       y = "Cyl",
       title = "Dis vs Cyl") +
  coord_fixed(0.80) +
  theme_light() +
  theme(
    legend.position = "right",
    axis.title = element_text(size = 20),
    axis.text = element_text(size = 17),
    axis.line = element_line(linewidth = 2),
    panel.grid.major = element_line(colour = "red"),
    panel.grid.minor = element_line(colour = "red"),
    axis.line.x.bottom = element_line(colour = "yellow"),
    axis.line.y.left = element_line(colour = "yellow"),
    plot.title = element_text(hjust = .5, size = 16)
  )

ggplot(mpg, aes(cty,hwy, colour = class, shape = factor(cyl))) +
  geom_violin(alpha = 0.6, size = 1.2) +  
  scale_color_viridis_c(option = "magma", end = 0.9) + 
  labs(
    x = "City Mileage (mpg)",
    y = "Highway Mileage (mpg)",
    title = "City vs Highway Mileage Across Car Classes"
  ) +
  coord_fixed(ratio = 1) +  
  theme_minimal(base_size = 16) +  
  theme(
    legend.position = "right",
    legend.title = element_text(size = 14, face = "bold"),
    legend.text = element_text(size = 12),
    axis.title = element_text(size = 20, face = "bold", color = "blue"),
    axis.text = element_text(size = 17, color = "darkblue"),
    axis.line = element_line(linewidth = 1.5, colour = "black"),
    panel.grid.major = element_line(colour = "gray70", linetype = "dashed"),
    panel.grid.minor = element_blank(),  
    plot.title = element_text(hjust = 0.5, size = 22, face = "bold", color = "purple"),
    plot.caption = element_text(size = 12, color = "darkred", face = "italic")
  )



################### 11TH FEB ##################################

ggplot(mpg, aes(cty,hwy, colour = class, shape = factor(cyl))) +
  geom_point () +
  geom_smooth(formula = y ~ x, method = "lm") +
  scale_color_viridis_d(option = "inferno", end = 0.9) + 
  labs(
    x = "City Mileage (mpg)",
    y = "Highway Mileage (mpg)",
    title = "City vs Highway Mileage Across Car Classes"
  ) +
  facet_grid(year ~ drv) +
  coord_fixed(ratio = 1) +  
  theme_minimal(base_size = 16) +  
  theme(
    legend.position = "right",
    legend.title = element_text(size = 14, face = "bold"),
    legend.text = element_text(size = 12),
    axis.title = element_text(size = 20, face = "bold", color = "blue"),
    axis.text = element_text(size = 17, color = "darkblue"),
    axis.line = element_line(linewidth = 1.5, colour = "black"),
    panel.grid.major = element_line(colour = "gray70", linetype = "dashed"),
    panel.grid.minor = element_blank(),  
    plot.title = element_text(hjust = 0.5, size = 22, face = "bold", color = "purple"),
    plot.caption = element_text(size = 12, color = "darkred", face = "italic")
  )





ggplot(mpg, aes(x = cty, colour = class,)) +
  geom_histogram(binwidth = 2, color = "red", fill = "orange") +
  scale_color_viridis_d(option = "inferno", end = 0.9) + 
  labs(
    x = "City Mileage (mpg)",
    y = "Frequency",
    title = "City Mileage vs Its frequency"
  ) +
  facet_grid(year ~ drv) +
  coord_fixed(ratio = 1) +  
  theme_minimal(base_size = 16) +  
  theme(
    legend.position = "right",
    legend.title = element_text(size = 14, face = "bold"),
    legend.text = element_text(size = 12),
    axis.title = element_text(size = 20, face = "bold", color = "blue"),
    axis.text = element_text(size = 17, color = "darkblue"),
    axis.line = element_line(linewidth = 1.5, colour = "black"),
    panel.grid.major = element_line(colour = "gray70", linetype = "dashed"),
    panel.grid.minor = element_blank(),  
    plot.title = element_text(hjust = 0.5, size = 22, face = "bold", color = "purple"),
    plot.caption = element_text(size = 12, color = "darkred", face = "italic")
  )





ggplot(mpg, aes(x = manufacturer, fill = drv)) +
  geom_bar(position = "stack", color = "orange") +
  scale_color_viridis_d(option = "inferno", end = 0.9) + 
  labs(
    x = "Manufacturer)",
    y = "Count",
    title = "Manufacturer vs Count"
  ) +
  facet_grid(year ~ drv) +
  coord_fixed(ratio = 1) +  
  theme_minimal(base_size = 16) +  
  theme(
    legend.position = "right",
    legend.title = element_text(size = 14, face = "bold"),
    legend.text = element_text(size = 12),
    axis.title = element_text(size = 20, face = "bold", color = "blue"),
    axis.text = element_text(size = 17, color = "darkblue"),
    axis.line = element_line(linewidth = 1.5, colour = "black"),
    panel.grid.major = element_line(colour = "gray70", linetype = "dashed"),
    panel.grid.minor = element_blank(),  
    plot.title = element_text(hjust = 0.5, size = 22, face = "bold", color = "purple"),
    plot.caption = element_text(size = 12, color = "darkred", face = "italic")
  )



data("economics")
View(economics)

ggplot(economics, aes(x = date, y = unemploy)) +
  geom_line() +
  scale_color_viridis_d(option = "inferno", end = 0.9) + 
  labs(
    x = "date",
    y = "unemploy",
    title = "date vs unemploy"
  ) +
  coord_fixed(ratio = 1) +  
  theme_minimal(base_size = 16) +  
  theme(
    legend.position = "right",
    legend.title = element_text(size = 14, face = "bold"),
    legend.text = element_text(size = 12),
    axis.title = element_text(size = 20, face = "bold", color = "blue"),
    axis.text = element_text(size = 17, color = "darkblue"),
    axis.line = element_line(linewidth = 1.5, colour = "black"),
    panel.grid.major = element_line(colour = "gray70", linetype = "dashed"),
    panel.grid.minor = element_blank(),  
    plot.title = element_text(hjust = 0.5, size = 22, face = "bold", color = "purple"),
    plot.caption = element_text(size = 12, color = "darkred", face = "italic")
  )



ggplot(mpg, aes(x = class)) +
  geom_bar() +
  scale_color_viridis_d(option = "inferno", end = 0.9) + 
  labs(
    x = "class",
    y = "Count",
    title = "class vs Count"
  ) +
  facet_grid(year ~ drv) +
  coord_fixed(ratio = 0.1) +  
  theme_minimal(base_size = 16) +  
  theme(
    legend.position = "right",
    legend.title = element_text(size = 14, face = "bold"),
    legend.text = element_text(size = 12),
    axis.title = element_text(size = 20, face = "bold", color = "blue"),
    axis.text = element_text(size = 17, color = "darkblue"),
    axis.line = element_line(linewidth = 1.5, colour = "black"),
    panel.grid.major = element_line(colour = "gray70", linetype = "dashed"),
    panel.grid.minor = element_blank(),  
    plot.title = element_text(hjust = 0.5, size = 22, face = "bold", color = "purple"),
    plot.caption = element_text(size = 12, color = "darkred", face = "italic")
  )


data(presidential)
View(presidential)
ggplot(presidential, aes(x = start, color = party)) +
  geom_histogram(binwidth = 2, color = "red", fill = "orange") +
  scale_color_viridis_d(option = "inferno", end = 0.9)

ggplot(presidential, aes(x = start, y = party)) +
  geom_line()


ggplot(presidential, aes(x = start, y = party)) +
  geom_boxplot() +
  scale_color_viridis_d(option = "inferno", end = 0.9) + 
  labs(
    x = "start",
    y = "party",
    title = "start vs party"
  ) +
  coord_fixed(ratio = 1) +  
  theme_minimal(base_size = 16) +  
  theme(
    legend.position = "right",
    legend.title = element_text(size = 14, face = "bold"),
    legend.text = element_text(size = 12),
    axis.title = element_text(size = 20, face = "bold", color = "blue"),
    axis.text = element_text(size = 17, color = "darkblue"),
    axis.line = element_line(linewidth = 1.5, colour = "black"),
    panel.grid.major = element_line(colour = "gray70", linetype = "dashed"),
    panel.grid.minor = element_blank(),  
    plot.title = element_text(hjust = 0.5, size = 22, face = "bold", color = "purple"),
    plot.caption = element_text(size = 12, color = "darkred", face = "italic")
  )



ggplot(presidential, aes(x = start, y = end)) +
  geom_point() +
  geom_smooth(formula = y ~ x, method = "lm") +
  scale_color_viridis_d(option = "inferno", end = 0.9) + 
  labs(
    x = "start",
    y = "end",
    title = "election_start vs election_end"
  ) +
  coord_fixed(ratio = 1) +  
  theme_minimal(base_size = 16) +  
  theme(
    legend.position = "right",
    legend.title = element_text(size = 14, face = "bold"),
    legend.text = element_text(size = 12),
    axis.title = element_text(size = 20, face = "bold", color = "blue"),
    axis.text = element_text(size = 17, color = "darkblue"),
    axis.line = element_line(linewidth = 1.5, colour = "black"),
    panel.grid.major = element_line(colour = "gray70", linetype = "dashed"),
    panel.grid.minor = element_blank(),  
    plot.title = element_text(hjust = 0.5, size = 22, face = "bold", color = "purple"),
    plot.caption = element_text(size = 12, color = "darkred", face = "italic")
  )


########### 13th Feb #################

if (!require("knitr")) {
  install.packages("knitr")
}
install.packages("knitr")
library(knitr)








































































  
