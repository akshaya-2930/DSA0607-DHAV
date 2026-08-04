# Student Mini Data
Student_ID <- c("S01","S02","S03","S04","S05","S06")
Gender <- c("Male","Female","Male","Female","Male","Female")
Study_Hours <- c(2.0,3.5,1.5,4.0,2.8,3.0)
Attendance <- c(78,90,70,95,85,92)
Math_Score <- c(62,80,55,90,72,82)
Science_Score <- c(65,85,58,92,74,86)
Exam_Date <- c("2025-01-10","2025-01-10",
               "2025-02-12","2025-02-12",
               "2025-03-15","2025-03-15")
student <- data.frame(Student_ID,
                      Gender,
                      Study_Hours,
                      Attendance,
                      Math_Score,
                      Science_Score,
                      Exam_Date)

print(student)
hist(student$Math_Score,
     main="Distribution of Math Scores",
     xlab="Math Score",
     ylab="Frequency",
     col="skyblue",
     border="black")
plot(student$Study_Hours,
     student$Math_Score,
     col=ifelse(student$Gender=="Male","blue","red"),
     pch=19,
     xlab="Study Hours",
     ylab="Math Score",
     main="Study Hours vs Math Score")

abline(lm(Math_Score ~ Study_Hours,
          data=student),
       col="darkgreen",
       lwd=2)

legend("topleft",
       legend=c("Male","Female"),
       col=c("blue","red"),
       pch=19)
student$Exam_Date <- as.Date(student$Exam_Date)
student$Month <- format(student$Exam_Date,"%Y-%m")

avg_math <- aggregate(Math_Score ~ Month,
                      data=student,
                      mean)

print(avg_math)
plot(avg_math$Math_Score,
     type="o",
     xaxt="n",
     col="blue",
     xlab="Month",
     ylab="Average Math Score",
     main="Monthly Average Math Score")

axis(1,
     at=1:nrow(avg_math),
     labels=avg_math$Month)