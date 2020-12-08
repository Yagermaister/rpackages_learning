library(ggplot2)
library(tibble)

# students daily cash, hryvnyas
data <- tibble(name = letters,
               age = sample(18:22, 26, replace = TRUE),
               cash = rnorm(26, mean = 100, sd = 50))
print(data)
plot <- ggplot(data, aes(x = age, y = cash))
print(plot + geom_boxplot(group = ""))

plot1 <- ggplot(data, aes(x = age))
print(plot1 + geom_histogram())