# _MechaCar_Statistical_Analysis_

### Overview of the Analysis

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called me to review the production data for insights that may help the manufacturing team. By running regression analyses and t-tests, I will review production data for AutoRU's newest prototype, the MechaCar, and provide insights that may help the manufacturing team. 

Furthermore, I designed a linear model that predicts the mpg of MechaCar prototypes using several variables including vehicle length, weight, spoiler angle, drivetrain and ground clearance. To create the linear regression, I read the data csv file, used the lm() function to create the linear regression, and used the summary() function to produce the summary statistics.

The linear regression script producces the below results. 

![alt text](https://github.com/Yoditatr/MechaCar_Statistical_Analysis/blob/main/Resources/Linear%20Reg.PNG?raw=true)

- According to my results, vehicle length and ground clearance are statistically likely to provide non-random amounts of variance to the model or are most likely to affect the miles per gallon performance of the MechaCar's AutosRUs prototype.
- Given the model's p-value of 5.35e-11, which is lower than the 0.05 assumed statistical significance, there is strong evidence against the null hypothesis (slope = 0). Therefore, the slope of the linear model is not considered to be zero.
- The model's R-squared value is 0.7149. Hence, the model predicts MPG of MechaCar effectively at a 71% rate. In other words, the variables of vehicle length, spoiler angle, ground clearance, and AWD have a strong positive association with mpg. Therefore, this model effectively predicts mpg of MechaCar prototypes.
