### Scatterplot with line of best fit and confidence intervals

plot = ggplot(cars, aes(x = speed, y = dist)) +
  geom_point(colour=ex_dark_green) +                      # Scatter plot
  geom_smooth(method = "lm", se = TRUE,colour=ex_dark_green,fill=ex_highlight_green) +  # Line of best fit with confidence intervals
  labs(title = "Scatter Plot with Line of Best Fit",x = "Speed",y = "Stopping Distance")+ex_theme
ggsave(filename = "ex_theme_scatterplot.png", plot = plot, width = 6, height = 4, dpi = 300)

### The same, but with Green Theme

plot = ggplot(cars, aes(x = speed, y = dist)) +
  geom_point(colour=ex_dark_green) +                      # Scatter plot
  geom_smooth(method = "lm", se = TRUE,colour=ex_dark_green,fill=ex_highlight_green) +  # Line of best fit with confidence intervals
  labs(title = "Scatter Plot with Line of Best Fit",x = "Speed",y = "Stopping Distance")+ex_green_theme
ggsave(filename = "ex_green_theme_scatterplot.png", plot = plot, width = 6, height = 4, dpi = 300)

### The same, but with Dark Theme

plot = ggplot(cars, aes(x = speed, y = dist)) +
  geom_point(colour=ex_highlight_green) +                      # Scatter plot
  geom_smooth(method = "lm", se = TRUE,colour=ex_dark_green,fill=ex_highlight_green) +  # Line of best fit with confidence intervals
  labs(title = "Scatter Plot with Line of Best Fit",x = "Speed",y = "Stopping Distance")+ex_dark_theme
ggsave(filename = "ex_dark_theme_scatterplot.png", plot = plot, width = 6, height = 4, dpi = 300)


### Density Plot with three variables compared, using Exeter Greens

density=ggplot(iris,aes(x=`Sepal.Length`,fill=Species,colour=Species))+geom_density(alpha=0.3)+scale_fill_manual(values=exeter_greens)+scale_colour_manual(values=exeter_greens)+ex_theme+labs(title = "Density Plot",x = "Sepal Length",y = "Density")
ggsave(filename = "ex_density.png", plot = density, width = 6, height = 4, dpi = 300)

#Bar chart with month as a variable. This is an awful example, I'm just trying to copy the university official example

economics=mutate(economics,month=factor(month.abb[month(date)],levels = month.abb))
bars <- ggplot(sample_n(economics, size = 200), aes(x = month)) +
  geom_bar(aes(fill = month), stat = "count", width=1) +
  labs(
    title = "Bar Plot",
    x = "Month",
    y = "Count"
  ) +
  scale_fill_discrete(name = "Cylinders") +  # Customize the legend title
  scale_fill_manual(values=exeter_full_palette)+scale_colour_manual(values=exeter_full_palette)+
  ex_theme
ggsave(filename = "ex_bars.png", plot = bars, width = 8, height = 4, dpi = 300)

#time series with 3 variables

num_points <- 30
categories <- factor(rep(letters[1:3], each = num_points))
x_vals <- rep(1:num_points, times = 3)
y_vals <- c(rnorm(num_points, mean = 3, sd = 0.5),
             rnorm(num_points, mean = 6, sd = 1),
             rnorm(num_points, mean = 9, sd = 1.5))

y_vals=y_vals+x_vals*as.numeric(categories)-as.numeric(categories)*10
synthetic_data <- data.frame(Category = factor(categories), X = x_vals, Y = y_vals)

# Create a line plot with more pronounced differences and lines going up
plot <- ggplot(synthetic_data, aes(x = X, y = Y, color = Category, group = Category)) +
  geom_line(size = 1.5) +
  labs(
    title = "Time Series with Categorical",
    x = "X",
    y = "Y"
  ) +
  scale_color_manual(values = c("red", "blue", "green")) +  # Custom colors
  ex_theme+scale_colour_manual(values=exeter_greens)

# Save the plot as a PNG file
ggsave(filename = "line_plot_pronounced_differences.png", plot = plot, width = 6, height = 4, dpi = 300)



### Dark Theme Forest Plot with Multiple Exposures and Outcomes

forest_df <- data.frame(
  beta = c(0.2, 0.5, 0.8,0.3, 0.7, 0.6,0.3, 0.7, 0.6,0.4),
  SE = c(0.1, 0.2, 0.2,0.1, 0.3, 0.4,0.1, 0.2, 0.2,0.1),
  exposure = c("Exposure A", "Exposure A", "Exposure B", "Exposure B", "Exposure C", "Exposure C", "Exposure D", "Exposure D", "Exposure E", "Exposure E"),
  outcome = c("Outcome 1", "Outcome 2", "Outcome 1", "Outcome 2", "Outcome 1", "Outcome 2", "Outcome 1", "Outcome 2", "Outcome 1", "Outcome 2")
)

FP=ggplot(forest_df, aes(x = beta, y = exposure)) +
    geom_vline(xintercept = 0, linetype = "dashed",colour='#FFFFFF') +
	geom_point(colour=ex_highlight_green,size=2) +
    geom_errorbarh(aes(xmin = beta - 1.96 * SE, xmax = beta + 1.96 * SE),colour=ex_highlight_green,linewidth=1) +
    facet_wrap(~ outcome, scales = "free", ncol = 1) +
    theme_minimal() +
    xlab("Effect Size (Beta)") +
    ylab("Outcome") +
    labs(title = "Faceted Forest Plot")+scale_color_manual(values = exeter_full_palette)+scale_fill_manual(values = exeter_full_palette)+ex_dark_theme
	
ggsave(filename = "faceted_forest_plot.png", plot = FP, width = 6, height = 6, dpi = 300)
