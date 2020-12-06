tibble <- tibble(x = 1:3, y = c("a", "b", "c"))
print(tibble)
frame <- as.data.frame(tibble)
print(frame)
tibble <- as_tibble(frame)
print(tibble)

print ("__gather()_________________________")
tibble <- tibble(country = LETTERS[1:3], "1999" = sample(1:100, 3),
                 "2000" = sample(1:100, 3))
print(tibble)
print(gather(tibble, '1999', '2000', key = "year", value = "cases"))

print ("__spread()_________________________")
tibble <- tibble(country = LETTERS[1:3], "1999" = sample(1:100, 3),
                 "2000" = sample(1:100, 3))
gathered_tibble <- gather(tibble, '1999', '2000',
                          key = "year", value = "cases")
print(gathered_tibble)
print(spread(gathered_tibble, year, cases))

print ("__handle missing values____________")

tibble <- tibble(x1 = sample(1:10, 3), x2 = c(1, NA, 5), x3 = c(4, NA, 10))
print(tibble)
print(drop_na(tibble))

print(fill(tibble, x2, x3))

print(replace_na(tibble, list(x2 = "new", x3 = "new")))

print ("__expand tables____________________")

tibble <- tibble(a = sample(1:3, 2), b = sample(1:3, 2), c = sample(1:3, 2),
                 d = sample(1:3, 2), e = sample(1:3, 2))
print(tibble)
print(complete(tibble, a, b, c))
print(expand(tibble, a, b, c))

print ("__split cells______________________")
tibble <- tibble(a = LETTERS[1:5], b = c("a/b", "b/c", "c/d", "d/e", "e/f"))

print(tibble)
print(separate(tibble, b, sep = "/", into = c("1", "2")))
print(separate_rows(tibble, b, sep = "/"))
tibble <- separate(tibble, b, sep = "/", into = c("1", "2"))
print(unite(tibble, "1", "2", col = "b", sep = "/"))




















