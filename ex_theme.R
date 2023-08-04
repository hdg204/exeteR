install.packages('tidyverse')
install.packages('ggplot2')
install.packages('extrafont')
install.packages('showtext')

library(extrafont)
library(tidyverse)
library(ggplot2)
library(showtext)
showtext_auto()

ex_night_green='#022020'
ex_dark_green='#003c3c'
ex_deep_green='#007d69'
ex_rich_green='#00a87e'
ex_bright_green='#00c896'
ex_highlight_green='#00dca5'

ex_wood_brown='#93272c'
ex_tree_brown='#b46a55'
ex_rose_red='#e60000'
ex_warm_red='#f9423a'
ex_pure_purple='#702081'
ex_low_purple='#9569be'
ex_coral_orange='#fc4c02'
ex_peach='#ff7f41'
ex_hay='#ffc62c'
ex_sun_yellow='#f3d54e'
ex_deep_sea='#250e62'
ex_morning_sky='#6ab3e7'
ex_sunset_pink='#e78699'
ex_light_pink='#f4c3cd'
ex_stone_grey='#898b8d'



exeter_full_palette=c(ex_dark_green,ex_deep_green,ex_highlight_green,ex_wood_brown,ex_pure_purple,ex_deep_sea,ex_sun_yellow,ex_low_purple,ex_sunset_pink,ex_morning_sky,ex_hay,ex_rose_red)

exeter_greens=c(ex_dark_green,ex_deep_green,ex_highlight_green) 
exeter_palette=c(ex_dark_green,ex_deep_green,ex_highlight_green,ex_wood_brown,ex_sun_yellow)


font_add_google(name = "Outfit", family = "Outfit")



ex_theme=theme_bw()+
  theme(text = element_text(family = "Outfit",size = 20),
        axis.line = element_line(colour = "black"),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
		plot.title = element_text(hjust = 0.5))
