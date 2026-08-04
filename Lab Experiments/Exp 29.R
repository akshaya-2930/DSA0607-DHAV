
Sample_ID <- c(1,2,3,4,5)
pH_Level <- c(7.2,6.8,7.5,6.5,7.1)
Turbidity <- c(3,5,2,7,4)
Quality <- c("Good","Fair","Good","Poor","Fair")
water <- data.frame(
  Sample_ID,
  pH_Level,
  Turbidity,
  Quality
)
print(water)
hist(water$pH_Level,
     main="Distribution of pH Levels",
     xlab="pH Level",
     ylab="Frequency",
     col="skyblue",
     border="black")
quality_table <- table(water$Quality)

pie(quality_table,
    main="Water Quality Categories",
    labels=names(quality_table),
    col=c("lightgreen","orange","pink"))
barplot(water$Turbidity,
        names.arg=water$Sample_ID,
        main="Turbidity by Sample",
        xlab="Sample ID",
        ylab="Turbidity",
        col="pink",
        border="black")
plot(water$pH_Level,
     water$Turbidity,
     main="pH Level vs Turbidity",
     xlab="pH Level",
     ylab="Turbidity",
     pch=19,
     col="blue")

abline(lm(Turbidity ~ pH_Level,
          data=water),
       col="red",
       lwd=2)