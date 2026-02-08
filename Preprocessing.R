#Data Preprocessing
setwd("C:/R-PROGRAMMING") #Set Working Directory

#Import the Dataset
data <- read.csv("student_scores.csv", header = TRUE) 
View(data)

#View Structure & Summary
str(data) 

summary(data)
#Checking Missing Values
colSums(is.na(data))

#Handling Missing Values
#Remove rows with NA
data <- na.omit(data)

#Replace numeric missing values with mean
data$MathScore[is.na(data$MathScore)] <- mean(data$MathScore, na.rm = TRUE)
data$ScienceScore[is.na(data$ScienceScore)] <- mean(data$ScienceScore, na.rm = TRUE)
data$Attendance[is.na(data$Attendance)] <- mean(data$Attendance, na.rm = TRUE)

#Replace missing Age with median & Gender with Mode
data$Age[is.na(data$Age)] <- median(data$Age, na.rm = TRUE) 

mode_gender <- names(sort(table(data$Gender), decreasing = TRUE))[1]
data$Gender[data$Gender == ""] <- NA
data$Gender[is.na(data$Gender)] <- mode_gender

#Encoding Categorical Variables
data$Gender <- factor(data$Gender, levels = c("Male", "Female"), labels = c(1, 2))

#Export Cleaned Dataset
write.csv(data, "cleaned_student_scores.csv", row.names = FALSE)
