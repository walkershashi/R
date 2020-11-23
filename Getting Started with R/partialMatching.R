# Partial Matching in R is done to retrieve value associated with certain name
x <- list(sksshashi = 1:10, skskumar = 2:6)

# this matches the word 'sks' with some name and if 'sks' is present in only one word 
# then gives the corresponding output else NULL
print(x$sks) # prints NULL as 'sks' is in both

print(x$sksk) # partially matches the second as 'sks' is present in both and 'k' in second

print(x[['sksk']]) # NULL

# using exact argument we can subset by partiall matchin
print(x[['sksk', exact = FALSE]])
