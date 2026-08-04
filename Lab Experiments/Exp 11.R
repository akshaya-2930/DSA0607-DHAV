# Geographic Data

City <- c("City A",
          "City B",
          "City C")

Population <- c(500000,
                700000,
                600000)

Avg_Temperature <- c(75,
                     68,
                     80)

Elevation <- c(1000,
               800,
               1200)

geo <- data.frame(City,
                  Population,
                  Avg_Temperature,
                  Elevation)

print(geo)
plot(1:3,
     1:3,
     pch=19,
     col="blue",
     xaxt="n",
     yaxt="n",
     xlab="",
     ylab="",
     main="Geographic Distribution of Cities")

text(1:3,
     1:3,
     labels=geo$City,
     pos=3)
plot(geo$Avg_Temperature,
     geo$Population,
     pch=19,
     col="red",
     xlab="Average Temperature",
     ylab="Population",
     main="Temperature vs Population")

abline(lm(Population ~ Avg_Temperature,
          data=geo),
       col="blue")
View(geo)