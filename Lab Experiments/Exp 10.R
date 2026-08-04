# Product Category Dataset

Category <- c("Electronics",
              "Clothing",
              "Appliances")

Sales <- c(50000,
           35000,
           40000)

product <- data.frame(Category,
                      Sales)

print(product)
barplot(rev(product$Sales),
        horiz=TRUE,
        names.arg=rev(product$Category),
        col=c("skyblue","orange","lightgreen"),
        main="Sales Conversion Funnel",
        xlab="Sales ($)",
        border="black")
View(product)
pie(product$Sales,
    labels=product$Category,
    main="Sales Distribution by Product Category",
    col=c("skyblue","orange","lightgreen"))