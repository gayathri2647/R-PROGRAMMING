# CONTROL STATEMENTS
cat("=== IF / ELSE & NESTED IF ===\n")
x <- 15

if (x > 10) {
  print("x is greater than 10")
  if (x %% 2 == 1) {
    print("x is also odd")
  } else {
    print("x is even")
  }
} else if (x == 10) {
  print("x is exactly 10")
} else {
  print("x is less than 10")
}

cat("\n=== FOR LOOP with NEXT and BREAK ===\n")
for (i in 1:10) {
  if (i == 3) {
    next# skip 3
  }
  if (i == 6) {
    print("Stopping loop at 6 using break")
    break
  }
  print(paste("i =", i))
}

cat("\n=== WHILE LOOP ===\n")
num <- 1
while (num <= 5) {
  print(paste("Number:", num))
  num <- num + 1
}

cat("\n=== REPEAT LOOP (stop with break) ===\n")
counter <- 1
repeat {
  print(paste("Counter:", counter))
  counter <- counter + 1
  
  if (counter > 3) {
    break
  }
}

cat("\n=== SWITCH STATEMENT ===\n")
grade <- "C"
message <- switch(
  grade,
  "A" = "Excellent",
  "B" = "Good",
  "C" = "Average",
  "D" = "Below Average",
  "F" = "Fail",
  "Unknown grade"
)

cat("\n=== tryCatch (Error Handling / Control Flow) ===\n")
value <- "text"
result <- tryCatch(
  {
    # attempt numeric operation that will fail
    value + 5
  },
  error = function(e) {
    print("Error caught: the value is not numeric!")
    return(NA)
  }
)
print(paste("Result after error handling:", result))


