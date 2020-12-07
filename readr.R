write_csv(data.frame(x1 = 1:3, x2 = letters[1:3], x3 = LETTERS[1:3]),
          "data.csv")

print(read_csv("data.csv"))