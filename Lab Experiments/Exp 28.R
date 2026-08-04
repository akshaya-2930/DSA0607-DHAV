Post_ID <- c(1,2,3,4,5)
Likes <- c(120,200,150,300,180)
Comments <- c(15,30,20,40,25)
Shares <- c(10,20,12,35,18)
social <- data.frame(
  Post_ID,
  Likes,
  Comments,
  Shares
)
print(social)
hist(social$Likes,
     main="Distribution of Likes",
     xlab="Likes",
     ylab="Frequency",
     col="skyblue",
     border="black")
engagement <- c(sum(social$Likes),
                sum(social$Comments),
                sum(social$Shares))

names(engagement) <- c("Likes","Comments","Shares")

pie(engagement,
    main="Total Engagement Components",
    labels=names(engagement),
    col=c("orange","lightgreen","skyblue"))
barplot(social$Comments,
        names.arg=social$Post_ID,
        main="Comments by Post",
        xlab="Post ID",
        ylab="Comments",
        col="pink",
        border="black")
plot(social$Likes,
     social$Shares,
     main="Likes vs Shares",
     xlab="Likes",
     ylab="Shares",
     pch=19,
     col="blue")

abline(lm(Shares ~ Likes,
          data=social),
       col="red",
       lwd=2)
