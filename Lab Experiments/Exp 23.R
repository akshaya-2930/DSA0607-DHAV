Passenger_ID <- c(1,2,3,4,5)
Age <- c(28,45,33,52,39)
Flight_Hours <- c(2,8,5,10,6)
Satisfaction <- c("High",
                  "Medium",
                  "High",
                  "Low",
                  "Medium")
airline <- data.frame(
  Passenger_ID,
  Age,
  Flight_Hours,
  Satisfaction
)
print(airline)
hist(airline$Age,
     main="Passenger Age Distribution",
     xlab="Age",
     ylab="Frequency",
     col="skyblue",
     border="black")
satisfaction_table <- table(airline$Satisfaction)

pie(satisfaction_table,
    main="Passenger Satisfaction Levels",
    labels=names(satisfaction_table),
    col=c("lightgreen","orange","skyblue"))

barplot(airline$Flight_Hours,
        names.arg=airline$Passenger_ID,
        main="Flight Hours by Passenger",
        xlab="Passenger ID",
        ylab="Flight Hours",
        col="pink",
        border="black")
plot(airline$Age,
     airline$Flight_Hours,
     main="Age vs Flight Hours",
     xlab="Age",
     ylab="Flight Hours",
     pch=19,
     col="blue")

abline(lm(Flight_Hours ~ Age,
          data=airline),
       col="red",
       lwd=2)