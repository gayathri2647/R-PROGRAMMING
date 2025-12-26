# 1. Vector (same type elements)
vec <- c(1, 2, 3, 4)
print(vec)
print(class(vec))
vec[3]

# 2. List (different types allowed)
my_list <- list(10, "R", TRUE, 3.5)
print(my_list)
print(class(my_list))
my_list[3]

# 3. Matrix (2D, same type)
mat <- matrix(1:9, nrow = 3, ncol = 3)
print(mat)
print(class(mat))
mat[1,2]

# 4. Array (multi-dimensional)
arr <- array(1:8, dim = c(2, 2, 2))
print(arr)
print(class(arr))
arr[3]

# 5. Data Frame (table-like, columns can differ)
df <- data.frame(
  name = c("A", "B", "C"),
  age = c(21, 22, 23)
)
print(df)
print(class(df))
df[1,2]

# 6. Factor (categorical data)
fac <- factor(c("Male", "Female", "Male"))
print(fac)
print(class(fac))
fac[3]
