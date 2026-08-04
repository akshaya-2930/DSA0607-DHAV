# Stock Prices Dataset
Date <- c("2023-01-01",
          "2023-01-02",
          "2023-01-03")
Stock_A <- c(100,105,110)
Stock_B <- c(150,152,148)
Stock_C <- c(120,118,122)
stock <- data.frame(Date,
                    Stock_A,
                    Stock_B,
                    Stock_C)
print(stock)
plot(stock$Stock_A,
     type="o",
     col="blue",
     xaxt="n",
     ylim=c(90,160),
     xlab="Date",
     ylab="Stock Price",
     main="Stock Prices Over Time")
lines(stock$Stock_B,
      type="o",
      col="red")
lines(stock$Stock_C,
      type="o",
      col="green")
axis(1,
     at=1:3,
     labels=stock$Date)

legend("topleft",
       legend=c("Stock A","Stock B","Stock C"),
       col=c("blue","red","green"),
       lty=1,
       pch=1)
percent_change <- c(0,
                    ((105-100)/100)*100,
                    ((110-105)/105)*100)
barplot(percent_change,
        names.arg=stock$Date,
        main="Daily Percentage Change of Stock A",
        xlab="Date",
        ylab="Percentage Change (%)",
        col="orange",
        border="black")
View(stock)