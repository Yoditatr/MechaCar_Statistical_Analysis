# _MechaCar_Statistical_Analysis_

### Overview of the Analysis

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called me to review the production data for insights that may help the manufacturing team. By running regression analyses and t-tests, I will review production data for AutoRU's newest prototype, the MechaCar, and provide insights that may help the manufacturing team. 

Furthermore, I designed a linear model that predicts the mpg of MechaCar prototypes using several variables including vehicle length, weight, spoiler angle, drivetrain and ground clearance. To create the linear regression, I read the data csv file, used the lm() function to create the linear regression, and used the summary() function to produce the summary statistics.

In this analysis we are:

- Performing multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collecting summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Running t-tests to determine if the manufacturing lots are statistically different from the mean population
- Designing a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

The data used for the analysis:

[MechaCar_mpg.csv](https://github.com/Yoditatr/MechaCar_Statistical_Analysis/blob/main/Resources/MechaCar_mpg.csv)

[Suspension_Coil.csv](https://github.com/Yoditatr/MechaCar_Statistical_Analysis/blob/main/Resources/Suspension_Coil.csv)

## _Linear Regression to Predict MPG_

The linear regression script producces the below results. 

![alt text](https://github.com/Yoditatr/MechaCar_Statistical_Analysis/blob/main/Resources/Linear%20Reg.PNG?raw=true)

- According to my results, vehicle length and ground clearance are statistically likely to provide non-random amounts of variance to the model or are most likely to affect the miles per gallon performance of the MechaCar's AutosRUs prototype.
- Given the model's p-value of 5.35e-11, which is lower than the 0.05 assumed statistical significance, there is strong evidence against the null hypothesis (slope = 0). Therefore, the slope of the linear model is not considered to be zero.
- The model's R-squared value is 0.7149. Hence, the model predicts MPG of MechaCar effectively at a 71% rate. In other words, the variables of vehicle length, spoiler angle, ground clearance, and AWD have a strong positive association with mpg. Therefore, this model effectively predicts mpg of MechaCar prototypes.

## _Summary Statistics on Suspension Coils_

The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. We are creating a summary statistics table to show:

- The suspension coil’s PSI continuous variable across all manufacturing lots
- The following PSI metrics for each lot: mean, median, variance, and standard deviation.

The figures below show the results of our script. 

Total Summary Statistics

![alt text](https://github.com/Yoditatr/MechaCar_Statistical_Analysis/blob/main/Resources/Total%20Summary%20Statistics.PNG?raw=true)

Per Lot Summary Statistics

![alt text](https://github.com/Yoditatr/MechaCar_Statistical_Analysis/blob/main/Resources/Lot%20Summary.PNG?raw=true)

The design specifications for the MechaCar suspension coils dictated that the variance of the suspension coils must not exceed 100 pounds per square inch. Based on these specifications, When looking at the entire population of the production lot, the variance of the coils is 62.29 PSI, which is well within the 100 PSI variance requirement. But when we see the individual lot summaries, Lots 1 and 2 meet the specifications with variances of 0.98 and 7.47 respectively, but Lot 3 has a variance of 170.29 which well exceeds the maximum of 100 pounds per square inch.

## _T-Tests on Suspension Coils_
I performed t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

The results of my script is as follows. 

T-Test for All Manufacturing Lots 

![alt text](https://github.com/Yoditatr/MechaCar_Statistical_Analysis/blob/main/Resources/ttest_all.PNG?raw=true)

The t-test for all manufacturing lots have a p-value of 0.06, i.e. we can reject the null hypothesis since we have enough evidence to. Therefore, the mean PSI of all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

T-Test for Lot 1

![alt text](https://github.com/Yoditatr/MechaCar_Statistical_Analysis/blob/main/Resources/ttest_lot1.PNG?raw=true)

The t-test for lot1 manufacturing have a p-value of 1, which is significantly highter than our significance value of 0.05, i.e. we don't have enough evidence to reject the null hypothesis. Therefore, the mean PSI for lot1 manufacturing is not statistically different from the population mean of 1,500 pounds per square inch.

T-Test for Lot 2

![alt text](https://github.com/Yoditatr/MechaCar_Statistical_Analysis/blob/main/Resources/ttest_lot2.PNG?raw=true)

The t-test for lot2 manufacturing have a p-value of 0.6, i.e. we don't have enough evidence to reject the null hypothesis. Therefore, the mean PSI for lot2 manufacturing is not statistically different from the population mean of 1,500 pounds per square inch.

T-Test for Lot 3

![alt text](https://github.com/Yoditatr/MechaCar_Statistical_Analysis/blob/main/Resources/ttest_lot3.PNG?raw=true)

The t-test for lot3 manufacturing have a p-value of 0.04, i.e. we can reject the null hypothesis since we have enough evidence to. Therefore, the mean PSI for lot3 manufacturing is statistically different from the population mean of 1,500 pounds per square inch.


## _Study Design: MechaCar vs Competitors_

In todays world, one of the most important factors that consumers consider when looking to buy for a new car is the safety rating. 

It would be useful to perform a statistical study to compare the safety ratings of MechaCar vehicles against the safety ratings of vehicles from other manufacturers. 

The T testing will help us determine if MechaCar's vehicles' safety rating scores are statistically different from its competitors as a whole and then statistically different from each competitor.
