# Load required library
library(dplyr)

# Create dataset
data <- data.frame(
  Attendance = c(92, 95, 88, 90, 94),
  MathScore = c(78, 85, 92, 88, 75)
)

# Preprocessing
# Check for missing values
sum(is.na(data))

# (If any NA exists, replace with mean)
data$Attendance[is.na(data$Attendance)] <- mean(data$Attendance, na.rm = TRUE)
data$MathScore[is.na(data$MathScore)] <- mean(data$MathScore, na.rm = TRUE)

# Training the model
model <- lm(MathScore ~ Attendance, data = data)

# Model summary
summary(model)

# Prediction
new_data <- data.frame(Attendance = 90)
predict(model, new_data)
