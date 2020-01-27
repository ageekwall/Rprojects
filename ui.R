#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(shinyjs)
library(readr)
library(magrittr)
library(dplyr)
library(xgboost)
library(DT)
library(pROC)
library(rpart)
library(rpart.plot)
library(caret)
library(e1071)
library(stringi)

# Define UI for application that draws a histogram
shinyUI(
    navbarPage("My Application",
            
               tabPanel("Modelling",
                        div(id = "nav_page",
                            hidden(
                              lapply(seq(1), function(i) {
                                div(
                                  class = "page",
                                  id = paste0("step", i),
                                  source(file.path("ui", "page3.R"),  local = TRUE)$value
                                )
                              })
                            ),
                           
                        )
                        
                        ),
               tabPanel("Data Visualization",
                        div(id = "nav_page",
                            hidden(
                              lapply(seq(1), function(i) {
                                div(
                                  class = "page",
                                  id = paste0("step", i),
                                  source(file.path("ui", "page1.R"),  local = TRUE)$value
                                )
                              })
                            ),
                            
                        )
                        
               )
              
    )
)
