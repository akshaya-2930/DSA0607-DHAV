# Survey Responses Dataset

Survey_ID <- c(1,2,3)

Question1 <- c("A","B","C")

Question2 <- c("B","A","A")

Question3 <- c("C","D","B")

survey <- data.frame(
  Survey_ID,
  Question1,
  Question2,
  Question3
)
print(survey)
q1 <- table(survey$Question1)

barplot(q1,
        main="Distribution of Question 1 Responses",
        xlab="Responses",
        ylab="Frequency",
        col=c("red","blue","green"),
        border="black")
response_table <- rbind(
  table(survey$Question1),
  table(survey$Question2),
  table(survey$Question3)
)

barplot(response_table,
        beside=FALSE,
        col=rainbow(nrow(response_table)),
        main="Overall Distribution of Survey Responses",
        xlab="Response Options",
        ylab="Frequency",
        legend.text=c("Question 1","Question 2","Question 3"))
View(survey)