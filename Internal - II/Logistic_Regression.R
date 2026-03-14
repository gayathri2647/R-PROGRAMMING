data <- data.frame(
  StudentID = c(101, 102, 103, 104, 105),
  Age = c(18, 17, 18, 19, 18),
  Gender = c("Male", "Female", "Female", "Male", "Female"),
  MathScore = c(78, 85, 92, 88, 75),
  ScienceScore = c(88, 91, 95, 89, 84),
  Attendance = c(92, 95, 88, 90, 94)
)
# Training
# Create Pass variable
data$Pass <- ifelse(data$MathScore >= 80, 1, 0)

# Train logistic regression model
log_model <- glm(Pass ~ Attendance, data = data, family = binomial)

# Prediction
new_data <- data.frame(Attendance = 90)
predict(log_model, new_data, type = "response")
