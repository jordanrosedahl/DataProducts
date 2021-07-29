#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Compound Annual Growth Rate calculator"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            numericInput("beginval","Initial Value",min=0,step=1,value=1),
            numericInput("endval","Ending Value",min=0,step=1,value=2),
            sliderInput("slider","Years",min = 1,max = 50,value = 30)
        ),

        # Show a plot of the generated distribution
        mainPanel(h3("CAGR:"),textOutput("cagr")
        )
    )
))
