Order_ID <- c(1,2,3,4,5)
Items_Ordered <- c(2,5,3,4,2)
Bill_Amount <- c(25,60,35,50,20)
Dining_Type <- c("Dine-In",
                 "Takeaway",
                 "Dine-In",
                 "Delivery",
                 "Takeaway")
restaurant <- data.frame(
  Order_ID,
  Items_Ordered,
  Bill_Amount,
  Dining_Type
)
print(restaurant)
hist(restaurant$Bill_Amount,
     main="Distribution of Bill Amounts",
     xlab="Bill Amount",
     ylab="Frequency",
     col="skyblue",
     border="black")
dining_table <- table(restaurant$Dining_Type)

pie(dining_table,
    main="Dining Type Distribution",
    labels=names(dining_table),
    col=c("orange","lightgreen","skyblue"))
barplot(restaurant$Items_Ordered,
        names.arg=restaurant$Order_ID,
        main="Items Ordered by Order",
        xlab="Order ID",
        ylab="Items Ordered",
        col="pink",
        border="black")

plot(restaurant$Items_Ordered,
     restaurant$Bill_Amount,
     main="Items Ordered vs Bill Amount",
     xlab="Items Ordered",
     ylab="Bill Amount",
     pch=19,
     col="blue")

abline(lm(Bill_Amount ~ Items_Ordered,
          data=restaurant),
       col="red",
       lwd=2)