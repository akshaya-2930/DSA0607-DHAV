Movie_ID <- c(1,2,3,4,5)

Genre <- c("Action",
           "Comedy",
           "Drama",
           "Action",
           "Comedy")

Rating <- c(4.5,3.8,4.2,4.7,3.5)

Duration <- c(120,90,140,130,95)

movie <- data.frame(
  Movie_ID,
  Genre,
  Rating,
  Duration
)

print(movie)

hist(movie$Rating,
     main="Distribution of Movie Ratings",
     xlab="Movie Rating",
     ylab="Frequency",
     col="skyblue",
     border="black")
genre_count <- table(movie$Genre)

pie(genre_count,
    main="Movie Genre Distribution",
    labels=names(genre_count),
    col=c("orange","lightgreen","skyblue"))
avg_rating <- aggregate(Rating ~ Genre,
                        data=movie,
                        mean)

barplot(avg_rating$Rating,
        names.arg=avg_rating$Genre,
        main="Average Ratings by Genre",
        xlab="Genre",
        ylab="Average Rating",
        col=c("orange","lightgreen","skyblue"),
        border="black")
plot(movie$Duration,
     movie$Rating,
     main="Duration vs Rating",
     xlab="Duration (Minutes)",
     ylab="Rating",
     pch=19,
     col="blue")

abline(lm(Rating ~ Duration,
          data=movie),
       col="red",
       lwd=2)