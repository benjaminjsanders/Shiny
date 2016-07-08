# Shiny Application

This shiny application uses data from the Seatbelts data set included with R. UKDriverDeaths is a time series giving the monthly totals of car drivers in Great Britain killed or seriously injured Jan 1969 to Dec 1984. Compulsory wearing of seat belts was introduced on 31 Jan 1983. Seatbelts is more information on the same problem. 

Seatbelts is a multiple time series, with columns:
  - DriversKilled: car drivers killed.
  - drivers: same as UKDriverDeaths.
  - front: font-seat passengers killed or seriously injured.
  - rear: rear-seat passengers killed or seriously injured.
  - kms: distance driven.
  - PetrolPrice: petrol price.
  - VanKilled: number of van (‘light goods vehicle’) drivers.
  - law: 0/1: was the law in effect that month?

Source

Harvey, A.C. (1989) Forecasting, Structural Time Series Models and the Kalman Filter. Cambridge University Press, pp. 519–523. 

Durbin, J. and Koopman, S. J. (2001) Time Series Analysis by State Space Methods. Oxford University Press. http://www.ssfpack.com/dkbook/ 

References

Harvey, A. C. and Durbin, J. (1986) The effects of seat belt legislation on British road casualties: A case study in structural time series modelling. Journal of the Royal Statistical Society series B, 149, 187–227. 

#How to Use
This shiny application allows you to see how the variable DriversKilled relates to several other variables.  All you have to do is select a variable from the drop down box on the left. Once you have done that a linear model will be created for the relationship between DriversKilled and the selected variable. A plot of the actual data points and the fit line will be displayed to the right. Below the plot you will find additional information about this linear model.