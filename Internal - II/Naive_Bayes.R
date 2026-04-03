# Create the dataframe
data <- data.frame(
  StudentID = c(101, 102, 103, 104, 105),
  Age = c(18, 17, 18, 19, 18),
  Gender = c("Male", "Female", "Female", "Male", "Female"),
  MathScore = c(78, 85, 92, 88, 75),
  ScienceScore = c(88, 91, 95, 89, 84),
  Attendance = c(92, 95, 88, 90, 94)
)

# Change the Gender into factor
#data$Gender <- as.factor(data$Gender)

# Install packages for NaiveBayes
install.packages("e1071")   # run once
library(e1071)

# Building the model
nb_model <- naiveBayes(
  Attendance ~  MathScore + ScienceScore,
  data = data
);

# Predict with sample data
new_student <- data.frame(
  MathScore = 90,
  ScienceScore = 93
);

predict(nb_model, new_student);
