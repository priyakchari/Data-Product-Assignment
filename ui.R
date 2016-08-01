#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(datasets)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Chicken Weight Histogram Based On Feed Selected"),
  
  # Sidebar with a select input for chicken feed 
  sidebarLayout(
    sidebarPanel(
        selectInput('infeed', 'Feed', unique(as.character(chickwts$feed)))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
