#Dataset where variables are INDEPENDENT
data_independent <- data.frame(
  Gender = c(rep("Male", 50), rep("Female", 50)),
  Result = c(
    rep(c("Pass", "Fail"), each = 25),
    rep(c("Pass", "Fail"), each = 25)
  )
)
#Contingency Table
tbl1 <- table(data_independent$Gender, data_independent$Result)
tbl1
#Chi-square Test
chisq.test(tbl1)

#Dataset where variables are DEPENDENT
data_dependent <- data.frame(
  Gender = c(rep("Male", 50), rep("Female", 50)),
  Result = c(
    c(rep("Pass", 40), rep("Fail", 10)),
    c(rep("Pass", 20), rep("Fail", 30))
  )
)
#Contingency Table
tbl2 <- table(data_dependent$Gender, data_dependent$Result)
tbl2
#Chi-square Test
chisq.test(tbl2)

