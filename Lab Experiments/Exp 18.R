# Student Academic Performance Dataset
Student_ID <- c("S1","S2","S3","S4","S5")
Age <- c(19,21,20,22,23)
Study_Hours <- c(12,8,15,10,7)
Attendance <- c(90,70,95,85,60)
Test_Score <- c(85,70,92,80,65)
Participation_Score <- c(8,7,9,8,6)
student <- data.frame(
  Student_ID,
  Age,
  Study_Hours,
  Attendance,
  Test_Score,
  Participation_Score
)
print(student)
x <- 1:5

test <- student$Test_Score
participation <- student$Participation_Score

plot(x,
     test + participation,
     type="n",
     xaxt="n",
     xlab="Students",
     ylab="Scores",
     main="Test Score and Participation Score")

axis(1,
     at=1:5,
     labels=student$Student_ID)

polygon(c(x,rev(x)),
        c(rep(0,5),rev(test)),
        col="skyblue",
        border=NA)

polygon(c(x,rev(x)),
        c(test,
          rev(test+participation)),
        col="orange",
        border=NA)

legend("topleft",
       legend=c("Test Score","Participation Score"),
       fill=c("skyblue","orange"))
student$Attendance_Group <- cut(student$Attendance,
                                breaks=quantile(student$Attendance,
                                                probs=seq(0,1,0.25)),
                                include.lowest=TRUE)

boxplot(Study_Hours ~ Attendance_Group,
        data=student,
        col=rainbow(4),
        main="Study Hours by Attendance Quartiles",
        xlab="Attendance Quartiles",
        ylab="Study Hours")
plot(density(student$Test_Score),
     main="Density Plot of Test Scores",
     xlab="Test Score",
     col="blue",
     lwd=2)