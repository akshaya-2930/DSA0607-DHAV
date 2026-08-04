# Energy Consumption Dataset
Sector <- c("Residential","Commercial","Industrial",
            "Residential","Commercial","Industrial")
Region <- c("North","South","West",
            "East","North","South")
Month <- c("Jan","Jan","Feb","Feb","Mar","Mar")
Temperature <- c(15,24,20,18,28,30)
Units_Consumed <- c(320,540,880,350,610,920)
Cost <- c(2100,3600,5900,2300,4100,6200)
Renewable_Usage <- c(22,18,12,25,20,15)
Peak_Hours <- c(4,6,8,5,7,9)
energy <- data.frame(
  Sector,
  Region,
  Month,
  Temperature,
  Units_Consumed,
  Cost,
  Renewable_Usage,
  Peak_Hours
)
print(energy)
hist(energy$Units_Consumed,
     main="Distribution of Units Consumed",
     xlab="Units Consumed (kWh)",
     ylab="Frequency",
     col="skyblue",
     border="black")
plot(density(energy$Units_Consumed),
     main="Density Plot of Units Consumed",
     xlab="Units Consumed",
     col="red",
     lwd=2)
symbols(energy$Temperature,
        energy$Units_Consumed,
        circles=energy$Peak_Hours,
        inches=0.3,
        bg=rgb(0,0,1,0.4),
        fg="blue",
        xlab="Temperature (°C)",
        ylab="Units Consumed (kWh)",
        main="Temperature vs Units Consumed")
avg_usage <- aggregate(Renewable_Usage ~ Sector,
                       data=energy,
                       mean)

print(avg_usage)
barplot(avg_usage$Renewable_Usage,
        names.arg=avg_usage$Sector,
        main="Average Renewable Energy Usage by Sector",
        xlab="Sector",
        ylab="Renewable Usage (%)",
        col=c("green","orange","skyblue"))