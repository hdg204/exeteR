# exeteR

This repository contains code and examples for making graphs in **ggplot** using the University of Exeter colour scheme and plot. The intended use is for conference presentations and posters using the University of Exeter branding. This has been produced according to https://brand.exeter.ac.uk/colour/

## Installation

Ensure that the following packages are installed: extrafont, tidyverse, ggplot2, showtext. Then, run

```
library(devtools)
source_url("https://raw.githubusercontent.com/hdg204/exeteR/main/ex_theme.R")
```
This will make the following items available:

1. ```ex_theme```, ```ex_green_theme```, and ```ex_dark_theme```, ggplot themes that set colour schemes and fonts for ggplots
2. All official Exeter colours from https://brand.exeter.ac.uk/colour/, stored in hex codes in e.g. ```ex_dark_green```
3. Three palettes using combinations of the official colours: ```exeter_greens```, ```exeter_palette```, and ```exeter_full_palette```.

## Examples

Code for all of the below examples is available in ex_theme_examples.R.

### Scatterplots showing the three themes

<img src="https://github.com/hdg204/exeteR/assets/36624710/9029de19-d108-4b28-8e95-b283fec581b3" width="480">

<img src="https://github.com/hdg204/exeteR/assets/36624710/dd218aa1-093a-40f0-943b-d48c470db11d" width="480">

<img src="https://github.com/hdg204/exeteR/assets/36624710/d5321d44-99cb-4925-8d49-4027bc7305d7" width="480">

### Density Plot and Line Plot using the exeter_greens palette

<img src="https://github.com/hdg204/exeteR/assets/36624710/2b69cc6f-10e8-4b28-b821-866e9d43964f" width="480">

<img src="https://github.com/hdg204/exeteR/assets/36624710/9efb92f5-4d81-4d6c-9d74-7ed70ac5e54c" width="480">

### Bar graph with month on x axis

<img src="https://github.com/hdg204/exeteR/assets/36624710/88679f5b-42a7-4213-a35c-06613b773ceb)" width="480">

### Faceted Forest Plot on dark theme

<img src="https://github.com/hdg204/exeteR/assets/36624710/4b620c39-15b3-4d73-a81c-6fff2cc9d191)" width="480">
