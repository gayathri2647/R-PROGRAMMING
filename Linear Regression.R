# ================================
# LINEAR REGRESSION – COMPLETE R CODE
# ================================

# 1. Create the dataset
data <- data.frame(
  StudentID = c(101, 102, 103, 104, 105),
  Attendance = c(92, 95, 88, 90, 94),
  MathScore = c(78, 85, 92, 88, 75)
)

print("Dataset:")
print(data)

# -------------------------------
# Hypotheses
# H0: Attendance has no effect on MathScore (β1 = 0)
# H1: Attendance significantly affects MathScore (β1 ≠ 0)
# -------------------------------

# 2. Calculate means
X_bar <- mean(data$Attendance)
Y_bar <- mean(data$MathScore)

cat("\nMean Attendance (X̄):", X_bar, "\n")
cat("Mean MathScore (Ȳ):", Y_bar, "\n")

# 3. Manual calculation of slope (β1)
numerator <- sum((data$Attendance - X_bar) * (data$MathScore - Y_bar))
denominator <- sum((data$Attendance - X_bar)^2)

beta1 <- numerator / denominator
cat("\nSlope (β1):", beta1, "\n")

# 4. Manual calculation of intercept (β0)
beta0 <- Y_bar - beta1 * X_bar
cat("Intercept (β0):", beta0, "\n")

# 5. Final regression equation
cat("\nRegression Equation:\n")
cat("MathScore =", round(beta0, 2), "+", round(beta1, 2), "* Attendance\n")

# 6. Build linear regression model using lm()
model <- lm(MathScore ~ Attendance, data = data)

cat("\nModel Summary:\n")
summary(model)

# 7. Prediction for new attendance value
new_data <- data.frame(Attendance = 90)
predicted_score <- predict(model, new_data)

cat("\nPredicted Math Score for Attendance = 90%:", predicted_score, "\n")

# 8. Manual prediction using equation
manual_prediction <- beta0 + beta1 * 90
cat("Manual Prediction for Attendance = 90%:", manual_prediction, "\n")
