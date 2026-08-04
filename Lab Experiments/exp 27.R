Plant_ID <- c(1,2,3,4,5)
Output_MW <- c(120,150,100,170,110)
Temperature <- c(65,70,60,75,62)
Status <- c("Active","Active","Maintenance","Active","Maintenance")
plant <- data.frame(
  Plant_ID,
  Output_MW,
  Temperature,
  Status
)
print(plant)
hist(plant$Output_MW,
     main="Power Output Distribution",
     xlab="Output (MW)",
     ylab="Frequency",
     col="skyblue",
     border="black")
status_table <- table(plant$Status)

pie(status_table,
    main="Plant Status",
    labels=names(status_table),
    col=c("lightgreen","orange"))
barplot(plant$Temperature,
        names.arg=plant$Plant_ID,
        main="Temperature by Plant",
        xlab="Plant ID",
        ylab="Temperature",
        col="pink",
        border="black")
plot(plant$Output_MW,
     plant$Temperature,
     main="Output vs Temperature",
     xlab="Output (MW)",
     ylab="Temperature",
     pch=19,
     col="blue")

abline(lm(Temperature ~ Output_MW,
          data=plant),
       col="red",
       lwd=2)