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
  age = c(21, 22, 23))
print(df)
print(class(df))
df[1,2]

# 6. Factor (categorical data)
fac <- factor(c("Male", "Female", "Male"))
print(fac)
print(class(fac))
fac[3]

# 7. Numeric
num_value <- 10.5
print(num_value)
print(class(num_value))

# 8. Integer
int_value <- 20L
print(int_value)
print(class(int_value))

# 9. Character
char_value <- "Hello R"
print(char_value)
print(class(char_value))

# 10. Logical
log_value <- TRUE
print(log_value)
print(class(log_value))

# 11. Complex
complex_value <- 3 + 4i
print(complex_value)
print(class(complex_value))

# 12. Raw
raw_value <- charToRaw("R")
print(raw_value)
print(class(raw_value))
