#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    source(file.path("server", "page3.R"),  local = TRUE)$value
    source(file.path("server", "page1.R"),  local = TRUE)$value
    

})
