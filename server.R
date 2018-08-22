library(shiny)
library(fpp2)
# Define server logic required to plot forecast

shinyServer(function(input, output) {

  output$distPlot <- renderPlot({
    
    # generate model based on historicals
    fitaa <- auto.arima(advert[,"sales"], xreg=advert[,"advert"])
    
    # generate forecast based on slider input
    fcast <- forecast(fitaa, h=6, xreg= rep(input$advertising,6))
    
    # plot forecast given advertising
    autoplot(fcast, ylab="Total Sales in Thousands")
  })
})
