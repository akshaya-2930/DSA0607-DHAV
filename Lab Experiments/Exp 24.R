Booking_ID <- c(1,2,3,4,5)
Stay_Nights <- c(2,5,3,7,4)
Guests <- c(2,4,1,3,2)
Room_Type <- c("Standard",
               "Deluxe",
               "Standard",
               "Suite",
               "Deluxe")
hotel <- data.frame(
  Booking_ID,
  Stay_Nights,
  Guests,
  Room_Type
)
print(hotel)
hist(hotel$Stay_Nights,
     main="Distribution of Stay Nights",
     xlab="Stay Nights",
     ylab="Frequency",
     col="skyblue",
     border="black")
room_table <- table(hotel$Room_Type)

pie(room_table,
    main="Room Type Distribution",
    labels=names(room_table),
    col=c("orange","lightgreen","skyblue"))
barplot(hotel$Guests,
        names.arg=hotel$Booking_ID,
        main="Guests per Booking",
        xlab="Booking ID",
        ylab="Number of Guests",
        col="pink",
        border="black")

plot(hotel$Guests,
     hotel$Stay_Nights,
     main="Guests vs Stay Nights",
     xlab="Number of Guests",
     ylab="Stay Nights",
     pch=19,
     col="blue")

abline(lm(Stay_Nights ~ Guests,
          data=hotel),
       col="red",
       lwd=2)
