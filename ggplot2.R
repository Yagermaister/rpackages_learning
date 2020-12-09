library(ggplot2)
library(tibble)

# students daily cash, hryvnyas
data <- tibble(name = rep(letters[1:20], 51),
               year = 1001:2020,
               ppltn = rexp(1020))
print(data)

print(ggplot(data, aes(x = year, y = ppltn)) + geom_hex())
print(ggplot(data, aes(x = ppltn)) + geom_histogram())
print(ggplot(data, aes(x = year, y = ppltn)) + 
            geom_point(aes(color = name)))
print(ggplot(data, aes(x = name, y = ppltn)) + geom_boxplot() +
            geom_jitter(alpha = 0.3, color = "tomato"))