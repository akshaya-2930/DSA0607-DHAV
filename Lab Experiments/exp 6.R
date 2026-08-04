# Create the dataset

Product_ID <- c(1,2,3)

Product_Name <- c("Product A",
                  "Product B",
                  "Product C")

January_Sales <- c(2000,1500,1200)

February_Sales <- c(2200,1800,1400)

March_Sales <- c(2400,1600,1100)

sales <- data.frame(Product_ID,
                    Product_Name,
                    January_Sales,
                    February_Sales,
                    March_Sales)

print(sales)
sales_matrix <- rbind(sales$January_Sales,
                      sales$February_Sales,
                      sales$March_Sales)

barplot(sales_matrix,
        beside=TRUE,
        names.arg=sales$Product_Name,
        col=c("red","blue","green"),
        main="Quarter 1 Product Sales",
        xlab="Products",
        ylab="Sales")

legend("topleft",
       legend=c("January","February","March"),
       fill=c("red","blue","green"))
months <- 1:3

ProductA <- c(2000,2200,2400)
ProductB <- c(1500,1800,1600)
ProductC <- c(1200,1400,1100)

total1 <- ProductA
total2 <- ProductA + ProductB
total3 <- ProductA + ProductB + ProductC

plot(months,
     total3,
     type="n",
     xaxt="n",
     xlab="Month",
     ylab="Sales",
     main="Overall Sales Trend")

axis(1,
     at=1:3,
     labels=c("January","February","March"))

polygon(c(months,rev(months)),
        c(rep(0,3),rev(total1)),
        col="skyblue",
        border=NA)

polygon(c(months,rev(months)),
        c(total1,rev(total2)),
        col="orange",
        border=NA)

polygon(c(months,rev(months)),
        c(total2,rev(total3)),
        col="lightgreen",
        border=NA)

legend("topleft",
       legend=c("Product A",
                "Product B",
                "Product C"),
       fill=c("skyblue",
              "orange",
              "lightgreen"))
sales