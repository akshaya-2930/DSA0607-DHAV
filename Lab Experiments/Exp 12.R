# Product Inventory Dataset

Product_ID <- c(1,2,3)

Product_Name <- c("Product A",
                  "Product B",
                  "Product C")

Quantity_Available <- c(250,175,300)

Price <- c(20,15,18)

inventory <- data.frame(Product_ID,
                        Product_Name,
                        Quantity_Available,
                        Price)

print(inventory)
barplot(inventory$Quantity_Available,
        names.arg=inventory$Product_Name,
        main="Quantity Available for Each Product",
        xlab="Product Name",
        ylab="Quantity Available",
        col="skyblue",
        border="black")
inventory$Category <- c("Electronics",
                        "Electronics",
                        "Furniture")

inventory_table <- table(inventory$Category,
                         inventory$Product_Name)

barplot(inventory_table,
        main="Quantity by Product Category",
        xlab="Category",
        ylab="Number of Products",
        col=rainbow(nrow(inventory_table)),
        legend.text=rownames(inventory_table))
View(inventory)