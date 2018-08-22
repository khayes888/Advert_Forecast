library(shiny)



# Define UI for application that draws a histogram

shinyUI(fluidPage(

  # Application title
  titlePanel("Forecast for Sales Given Advertising"),
  
  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      h3('Choose an expected average spend on advertising for the next 6 months'),
      sliderInput("advertising",
                  "Amount of Advertising:",
                  min = 0,
                  max = 30,
                  value = 10 )
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      p('This app forecasts expected sales for the next 6 months given an expected amount of average spending on
        advertising.  To use it, please select an estimated advertising spend using the slider on the left. '),
      plotOutput("distPlot")
      )
    )
))



