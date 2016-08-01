#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(datasets)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
      feed_filter <- chickwts$feed == input$infeed
      cw_feed <- chickwts[feed_filter, ]
     # mu <- input$inavgwgt
     # chkwgtHist <- function(mu) {
     #     hist(cw_feed$weight, col = "blue", breaks = 25)
     #     lines(c(mu, mu), c(0, 500),col="red",lwd=5)
     #     mse <- mean((cw_feed$weight- mu)^2)
     #     text(250,1.6, paste("mu = ", mu))
     #     text(250,1.4, paste("MSE = ", round(mse, 2)))
     # }
    
    # draw the histogram with the specified number of bins
    meanwgt <- round(mean(cw_feed$weight),0)
    hist(cw_feed$weight, breaks = 25, col = 'darkgray', border = 'white',main = "Histogram of Chicken Weight",xlab="Chicken Weight")
    text(meanwgt,2,paste("Mean = ", meanwgt),col = 'blue')
  })
  
})
