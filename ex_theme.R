library(extrafont)
library(tidyverse)
library(ggplot2)
library(showtext)
showtext_auto()

#define exeter colours
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

# also add all of the sub styles with different weighting
wt <- seq(100, 900, 100)
purrr::walk(
  wt,
  \(x) font_add_google(
    name = "Outfit",
    family = paste0("Outfit", x),
    regular.wt = x
  )
)




ex_theme=theme_bw()+
  theme(text = element_text(family = "Outfit200",size = 40),
        axis.line = element_line(colour = "black"),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
		strip.background = element_rect(fill = '#FFFFFF'),
		plot.title = element_text(hjust = 0.5,family="Outfit700"))
		
ex_green_theme=theme_bw()+
  theme(text = element_text(family = "Outfit200",size = 40,colour=ex_deep_green),
        axis.line = element_line(colour = "black"),
        panel.grid.minor = element_blank(),
		strip.background = element_rect(fill = '#FFFFFF'),
		axis.text.x = element_text(color=ex_deep_green),
        axis.text.y = element_text(color=ex_deep_green),
		strip.text = element_text(colour = ex_deep_green,family = "Outfit"),
		axis.line.x=element_line(colour=ex_dark_green),
		axis.line.y=element_line(colour=ex_dark_green),
		axis.ticks=element_line(colour=ex_dark_green),
		panel.background = element_rect(colour=ex_dark_green),
		plot.title = element_text(hjust = 0.5,family="Outfit700"))

ex_dark_theme=theme_bw()+
    theme(text = element_text(family = "Outfit200",size = 40,colour='#FFFFFF'),
        axis.line = element_line(colour = "#FFFFFF"),
        panel.grid.minor = element_blank(),
        panel.background = element_rect(fill = ex_dark_green,colour='#FFFFFF'),
		plot.background = element_rect(fill = ex_dark_green,colour=ex_dark_green),
        plot.title = element_text(hjust = 0.5,family="Outfit700",color=ex_highlight_green),
		axis.text.x = element_text(color="#FFFFFF"),
        axis.text.y = element_text(color="#FFFFFF"),
		panel.grid.major = element_line(size = 0.25),
		panel.border = element_rect(color = "#FFFFFF", fill = NA),
		strip.background =element_rect(fill=ex_dark_green,color='#FFFFFF'),
		strip.text = element_text(colour = '#FFFFFF',family = "Outfit"),
		axis.line.x=element_line(colour="#FFFFFF"),
		axis.line.y=element_line(colour="#FFFFFF"),
		axis.ticks=element_line(colour="#FFFFFF"))
