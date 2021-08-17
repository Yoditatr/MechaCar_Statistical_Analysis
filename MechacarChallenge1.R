# Linear Regression to Predict MPG

#import libraries
library(dplyr)

#read file
MechaCarData <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

#create linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCarData)

#create summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCarData))

#-----------------------------------------

# Summary Statistics on Suspension Coils

#read file
SuspensionCoilData <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)

#create summary table
total_summary <- SuspensionCoilData %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#create summary table grouped by lot
lot_summary <- SuspensionCoilData %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#-----------------------------------------

# T-Tests on Suspension Coils

#t-test for all manufacturing lots
t.test(SuspensionCoilData$PSI, mu=1500)

#t-test for lot 1
t.test(subset(SuspensionCoilData$PSI, SuspensionCoilData$Manufacturing_Lot == "Lot1"), mu=1500)
#t-test for lot 2
t.test(subset(SuspensionCoilData$PSI, SuspensionCoilData$Manufacturing_Lot == "Lot2"), mu=1500)
#t-test for lot 3
t.test(subset(SuspensionCoilData$PSI, SuspensionCoilData$Manufacturing_Lot == "Lot3"), mu=1500)