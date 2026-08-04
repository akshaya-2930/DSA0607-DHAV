Song_ID <- c(1,2,3,4,5)
Duration <- c(3.5,4.2,3.8,5.0,4.1)
Streams <- c(150,200,180,250,170)
Genre <- c("Pop","Rock","Pop","Hip-Hop","Rock")
music <- data.frame(
  Song_ID,
  Duration,
  Streams,
  Genre
)
print(music)
hist(music$Duration,
     main="Song Duration Distribution",
     xlab="Duration (Minutes)",
     ylab="Frequency",
     col="green",
     border="black")
genre_table <- table(music$Genre)

pie(genre_table,
    main="Genre Distribution",
    labels=names(genre_table),
    col=c("red","lightgreen","skyblue"))
avg_streams <- aggregate(Streams ~ Genre,
                         data=music,
                         mean)

barplot(avg_streams$Streams,
        names.arg=avg_streams$Genre,
        main="Average Streams by Genre",
        xlab="Genre",
        ylab="Average Streams (000s)",
        col="pink",
        border="black")
plot(music$Duration,
     music$Streams,
     main="Duration vs Streams",
     xlab="Duration (Minutes)",
     ylab="Streams (000s)",
     pch=19,
     col="blue")

abline(lm(Streams ~ Duration,
          data=music),
       col="red",
       lwd=2)