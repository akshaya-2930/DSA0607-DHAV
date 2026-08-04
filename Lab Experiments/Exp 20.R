# ============================================
# SET 20 : Hospital Appointment Analysis
# ============================================

# Step 1: Create Dataset

Patient_ID <- c(1,2,3,4,5)

Age <- c(25,40,35,50,29)

Waiting_Time <- c(2,5,1,7,3)

Appointment_Status <- c("Attended",
                        "Missed",
                        "Attended",
                        "Missed",
                        "Attended")

hospital <- data.frame(
  Patient_ID,
  Age,
  Waiting_Time,
  Appointment_Status
)

print(hospital)

# ============================================
# Task 1 : Histogram of Patient Ages
# ============================================

hist(hospital$Age,
     main="Patient Age Distribution",
     xlab="Age",
     ylab="Frequency",
     col="skyblue",
     border="black")

# ============================================
# Task 2 : Pie Chart of Appointment Status
# ============================================

status <- table(hospital$Appointment_Status)

pie(status,
    main="Appointment Status Distribution",
    labels=names(status),
    col=c("lightgreen","orange"))

# ============================================
# Task 3 : Bar Chart of Waiting Time
# ============================================

barplot(hospital$Waiting_Time,
        names.arg=hospital$Patient_ID,
        main="Waiting Time by Patient",
        xlab="Patient ID",
        ylab="Waiting Time (Days)",
        col="pink",
        border="black")

# ============================================
# Task 4 : Scatter Plot (Age vs Waiting Time)
# ============================================

plot(hospital$Age,
     hospital$Waiting_Time,
     main="Age vs Waiting Time",
     xlab="Age",
     ylab="Waiting Time (Days)",
     pch=19,
     col="blue")

abline(lm(Waiting_Time ~ Age,
          data=hospital),
       col="red",
       lwd=2)