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
