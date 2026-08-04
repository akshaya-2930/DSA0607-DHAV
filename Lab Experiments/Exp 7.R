# Customer Demographics Dataset

Customer_ID <- c(1,2,3)
Age <- c(28,35,42)
Gender <- c("Female","Male","Female")
Income <- c(50000,60000,75000)

customer <- data.frame(Customer_ID,
                       Age,
                       Gender,
                       Income)

print(customer)
barplot(customer$Age,
        names.arg=customer$Customer_ID,
        main="Customer Age Distribution",
        xlab="Customer ID",
        ylab="Age",
        col="skyblue",
        border="black")
gender_count <- table(customer$Gender)

pie(gender_count,
    main="Customer Gender Distribution",
    labels=names(gender_count),
    col=c("pink","lightblue"))
View(customer)
