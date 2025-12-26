# Create dataframe
eb_data <- data.frame(
  Consumer_Name = character(),
  Consumer_Number = character(),
  Place = character(),
  Month = character(),
  Previous_Reading = numeric(),
  Current_Reading = numeric(),
  Units = numeric(),
  stringsAsFactors = FALSE
)
months_list <- c("January","February","March","April","May","June",
                 "July","August","September","October","November","December")