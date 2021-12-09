#**********Deliverable 1****************
# Load library function 
library(tidyverse)

# Import and Read MechaCar_mpg.csv as Dataframe
MechaCar_mpg_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

# Perform Linear regression
lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar_mpg_df)

# Summarize Linear regression model
summary(lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar_mpg_df)) #summarize linear model


#**********Deliverable 2****************

# Import and Read Suspension_Coil.csv as Dataframe
Suspension_Coil_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.

total_summary <- Suspension_Coil_df %>% summarize(Mean=mean(PSI),Median=median(PSI),var=var(PSI),Standard_Dev=sd(PSI), .groups = 'keep')

# create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot.                                                                
lot_summary <- Suspension_Coil_df  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Var=var(PSI),Standard_Dev=sd(PSI), .groups = 'keep')  

#**********Deliverable 3****************

# use t.test() to determine if the PSI across ALL lots is statistically different from the pop. mean of 1,500 PSI.
t.test(Suspension_Coil_df$PSI,mu=1500)


# use t.test() function 3 more times with subset() to determine if PSI for each manufacturing lot is statistically different from the pop. mean of 1,500 PSI
lot1 <- subset(Suspension_Coil_df, Manufacturing_Lot=="Lot1")
lot2 <- subset(Suspension_Coil_df, Manufacturing_Lot=="Lot2")
lot3 <- subset(Suspension_Coil_df, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)



