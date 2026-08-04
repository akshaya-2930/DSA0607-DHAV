# Vehicle Performance Dataset
Vehicle_ID <- c("V1","V2","V3","V4","V5")
Engine_Size <- c(1.5,2.0,3.0,2.5,1.8)
Horsepower <- c(110,150,250,200,130)
Fuel_Efficiency <- c(18,15,12,14,17)
Top_Speed <- c(180,200,250,220,190)
Safety_Rating <- c(4,5,5,4,3)
vehicle <- data.frame(
  Vehicle_ID,
  Engine_Size,
  Horsepower,
  Fuel_Efficiency,
  Top_Speed,
  Safety_Rating
)
print(vehicle)
# Install package (Only first time)
install.packages("ggplot2")

library(ggplot2)

ggplot(vehicle,
       aes(x=factor(Safety_Rating),
           y=Fuel_Efficiency,
           fill=factor(Safety_Rating)))+
  geom_violin(trim=FALSE)+
  geom_boxplot(width=0.1,
               fill="white")+
  labs(title="Fuel Efficiency by Safety Rating",
       x="Safety Rating",
       y="Fuel Efficiency (km/l)")+
  theme_minimal()
install.packages("corrplot")

library(corrplot)

vehicle_num <- vehicle[,2:6]

cor_matrix <- cor(vehicle_num)

corrplot(cor_matrix,
         method="color",
         addCoef.col="black",
         tl.col="black",
         tl.srt=45)