data <- data.frame(
  StudentID = c(101, 102, 103, 104, 105),
  Age = c(18, 17, 18, 19, 18),
  Gender = c("Male", "Female", "Female", "Male", "Female"),
  MathScore = c(78, 85, 92, 88, 75),
  ScienceScore = c(88, 91, 95, 89, 84),
  Attendance = c(92, 95, 88, 90, 94)
)

# Remove non-numeric columns (Gender and StudentID)
numeric_data <- data[, c("MathScore", "ScienceScore", "Attendance")]

# Create the heatmap
heatmap(as.matrix(numeric_data), 
        scale = "row",    # Normalize by row
        col = colorRampPalette(c("white", "blue"))(100),  # Color scheme
        main = "Heatmap of Scores and Attendance")
