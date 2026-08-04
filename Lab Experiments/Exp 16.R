# Patient Health Risk Dataset
Patient_ID <- c("P1","P2","P3","P4","P5")
Age <- c(25,40,55,35,60)
BMI <- c(22,28,30,26,32)
BP <- c(120,135,145,130,150)
Cholesterol <- c(180,210,240,200,260)
patient <- data.frame(
  Patient_ID,
  Age,
  BMI,
  BP,
  Cholesterol
)
print(patient)
pairs(patient[,2:5],
      main="Scatterplot Matrix of Health Indicators",
      col="blue",
      pch=19)
plot(ecdf(patient$Cholesterol),
     main="ECDF of Cholesterol Levels",
     xlab="Cholesterol",
     ylab="ECDF",
     col="blue")
avg_values <- c(
  mean(patient$Age),
  mean(patient$BMI),
  mean(patient$BP),
  mean(patient$Cholesterol)
)

barplot(avg_values,
        names.arg=c("Age","BMI","BP","Cholesterol"),
        col=c("skyblue","orange","green","red"),
        main="Average Health Indicators",
        xlab="Health Indicators",
        ylab="Average Value")