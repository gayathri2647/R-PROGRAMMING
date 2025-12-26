repeat {
  
  cat("\n--- EB Bill Calculator ---\n")
  
  previous <- as.numeric(readline("Enter previous reading: "))
  current <- as.numeric(readline("Enter current reading: "))
  
  # Correct validation
  if (is.na(current) || is.na(previous) || current < previous) {
    cat("Invalid input! Please try again.\n")
    next
  }
  
  # Units consumed
  units <- current - previous
  cat("Units consumed:", units, "\n")
  
  # Bill calculation
  if (units <= 100) {
    bill <- 0
  } else if (units <= 200) {
    bill <- (units - 100) * 5
  } else if (units <= 300) {
    bill <- (100 * 5) + (units - 200) * 7
  } else {
    bill <- (100 * 5) + (100 * 7) + (units - 300) * 10
  }
  
  cat("Your Total EB Bill: Rs.", bill, "\n")
  
  # Ask user if they want to continue
  choice <- readline("Do you want to calculate again? (yes/no): ")
  
  if (tolower(choice) != "yes") {
    cat("Exiting... Thank you!\n")
    break
  }
}
