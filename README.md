# R_Analysis

## Linear Regression to Predict MPG

#### MechaCar linear regression output:

![MechaCar_mpg](https://github.com/Sheetaltkr/R_Analysis/blob/main/Resources/MechaCar_mpg1.png)

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

- vehicle_length (2.60e-12)
- ground_clearance (5.21e-08)
- Intercept(5.08e-08)

Each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model (< 0.05 significance level). In other words the vehicle_length and ground_clearance have a significant impact on mpg values.

#### Is the slope of the linear model considered to be zero? Why or why not?
The  **p-value** of our linear regression analysis is **5.35e-11**, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the **slope of our linear model is not zero**.
  
#### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Yes, the linear model has high probability predicting mpg values of MechaCar prototypes. The **r-squared (r2)** value - 0.7149.
The **r-squared (r2)** value is also known as the coefficient of determination and represents how well the regression model approximates real-world data points.

## Summary Statistics on Suspension Coils

and write a short summary using screenshots from your total_summary and lot_summary dataframes, and address the following question:

Total Summary:

![total_summary](https://github.com/Sheetaltkr/R_Analysis/blob/main/Resources/total_summary.png)

Lotwise Summary:

![lot_summary](https://github.com/Sheetaltkr/R_Analysis/blob/main/Resources/lot_summary.png)

#### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Yes, the manufacturing data does meet this design specification for all manufacturing lots in total.As per the total summary of the PSI design specification has the **variance** is 62.3 which is < 100. 

Individually, lot 1 and lot 2 meet the design specifications as they have the variance on PSI as 1 and 7.5 respectively. However, lot 3 does not meet the design specification due to variance of 170 which > 100. 
