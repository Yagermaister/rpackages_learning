library(readr)

write_csv(data.frame(sample(1:3, 3), sample(1:3, 3), sample(1:3, 3)),
          file = "data.csv")

print("data read")
print(read_csv("data.csv"))

print("data read with headers x1, x2, x3 and skiping fist line")
print(read_csv("data.csv", col_names=c("x1", "x2", "x3"), skip = 1))

print("data read missing values '1'")
print(read_csv("data.csv", col_names=c("x1", "x2", "x3"), skip = 1,
               na = "1"))
      
print("data read parsing columns types")
print(read_csv("data.csv", skip = 1, col_names=c("x1", "x2", "x3"),
               col_types = cols(x1 = col_integer(),
                                x2 = col_double(),
                                x3 = col_character())))
