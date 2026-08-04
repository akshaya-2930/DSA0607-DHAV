# Create Data set

Student_ID <- c("L01","L02","L03","L04","L05","L06")
Gender <- c("Male","Female","Male","Female","Male","Female")
Age <- c(20,22,19,21,23,20)
Course <- c("R","R","SQL","R","R","SQL")
Study_Time <- c(3.5,4.2,2.0,5.0,2.5,4.0)
Videos_Watched <- c(12,15,8,18,9,14)
Quiz_Score <- c(78,85,65,92,70,88)
Login_Date <- c("2025-01-05","2025-01-05","2025-02-08",
                "2025-02-08","2025-03-12","2025-03-12")

data <- data.frame(Student_ID,
                   Gender,
                   Age,
                   Course,
                   Study_Time,
                   Videos_Watched,
                   Quiz_Score,
                   Login_Date)

print(data)
hist(data$Quiz_Score,
     main="Distribution of Quiz Scores",
     xlab="Quiz Score",
     ylab="Frequency",
     col="skyblue",
     border="black")
plot(avg_score$Quiz_Score,
     type="o",
     xaxt="n",
     col="blue",
     xlab="Month",
     ylab="Average Quiz Score",
     main="Monthly Average Quiz Score")

axis(1,
     at=1:nrow(avg_score),
     labels=avg_score$Month)
moving_avg <- filter(avg_score$Quiz_Score,
                     rep(1/2,2),
                     sides=1)

lines(moving_avg,
      col="red",
      lwd=2)

legend("topleft",
       legend=c("Average Score","Moving Average"),
       col=c("blue","red"),
       lty=1)
moving_avg <- filter(avg_score$Quiz_Score,
                     rep(1/2,2),
                     sides=1)

