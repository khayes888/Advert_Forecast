# Developing Data Products Final Project

## Summary
This repo contains a ui.r and a server.r file that correspond to a shiny app built as an example for the Developing Data Products Final Project.  The app uses the advert
data in the fpp2 package to create a dynamic time series forecast based on user input.

## How to Use
In order to use the app:

1. Simply choose the average amount of advertising spend for the next 6 months
2. Examine the plot rendered below that shows actuals and the expected forecast for the next 6 months
	
## Method
The forecast approach uses the auto.arima function with and xreg specification.  This results in a dynamic regression model that uses advertising expenditure as an 
explanatory variable fit with arma errors.

