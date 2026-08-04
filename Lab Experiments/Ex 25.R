
User_ID <- c(1,2,3,4,5)
Steps <- c(7000,10000,8500,12000,6500)
Calories_Burned <- c(250,400,320,500,220)
Active_Minutes <- c(40,60,50,75,35)
fitness <- data.frame(
  User_ID,
  Steps,
  Calories_Burned,
  Active_Minutes
)
print(fitness)
hist(fitness$Steps,
     main="Distribution of Daily Steps",
     xlab="Daily Steps",
     ylab="Frequency",
     col="skyblue",
     border="black")
Activity_Level <- ifelse(fitness$Active_Minutes < 45,
                         "Low",
                         ifelse(fitness$Active_Minutes <= 60,
                                "Medium",
                                "High"))

activity_table <- table(Activity_Level)

pie(activity_table,
    main="Activity Level Categories",
    labels=names(activity_table),
    col=c("orange","lightgreen","skyblue"))
barplot(fitness$Calories_Burned,
        names.arg=fitness$User_ID,
        main="Calories Burned by User",
        xlab="User ID",
        ylab="Calories Burned",
        col="pink",
        border="black")