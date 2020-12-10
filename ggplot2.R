library(ggplot2)
library(tibble)
library(patchwork)

# students daily cash, hryvnyas
data <- tibble(name = rep(letters[1:3], 20),
               year = 1961:2020,
               ppltn = rexp(60))
print(data)

print(ggplot(data, aes(x = year, y = ppltn)) + geom_hex())
print(ggplot(data, aes(x = ppltn)) + geom_histogram(binwidth = 0.5))
print(ggplot(data, aes(x = year, y = ppltn)) + 
            geom_point(aes(color = name)))
print(ggplot(data, aes(x = name, y = ppltn)) + geom_boxplot() +
            geom_jitter(alpha = 0.3, color = "tomato"))
print(ggplot(data, aes(year, ppltn, color = name)) +
            geom_line())

print(data %>% ggplot(aes(year, ppltn, group = name)) +
            geom_line()) 

print(ggplot(data, aes(x = year, y = ppltn)) + 
            geom_point(aes(color = name)) + 
            facet_wrap(facets = vars(name)))

plot1 <- ggplot(data, aes(year, ppltn, color = name)) + geom_boxplot()
plot2 <- ggplot(data, aes(ppltn)) + geom_histogram()
combo_plot <- plot1 / plot2 + plot_layout(heights = c(3, 2))
print(combo_plot)

ggsave("combo_plot_abun_weight.png", combo_plot, width = 10, dpi = 300)