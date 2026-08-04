
User_ID <- c(1,2,3,4,5)
Books_Borrowed <- c(2,5,3,6,1)
Days_Kept <- c(10,25,14,30,7)
Fine_Amount <- c(0,15,0,20,0)
library_data <- data.frame(
  User_ID,
  Books_Borrowed,
  Days_Kept,
  Fine_Amount
)
print(library_data)
hist(library_data$Books_Borrowed,
     main="Distribution of Books Borrowed",
     xlab="Books Borrowed",
     ylab="Frequency",
     col="skyblue",
     border="black")
Fine_Status <- ifelse(library_data$Fine_Amount > 0,
                      "With Fine",
                      "No Fine")

fine_table <- table(Fine_Status)

pie(fine_table,
    main="Users With and Without Fines",
    labels=names(fine_table),
    col=c("orange","lightgreen"))
barplot(library_data$Fine_Amount,
        names.arg=library_data$User_ID,
        main="Fine Amount by User",
        xlab="User ID",
        ylab="Fine Amount",
        col="pink",
        border="black")
plot(library_data$Days_Kept,
     library_data$Fine_Amount,
     main="Days Kept vs Fine Amount",
     xlab="Days Kept",
     ylab="Fine Amount",
     pch=19,
     col="blue")

abline(lm(Fine_Amount ~ Days_Kept,
          data=library_data),
       col="red",
       lwd=2)
