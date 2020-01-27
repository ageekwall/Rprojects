observeEvent(input$btn_go1, {
  
  if(input$rb_dataset == "Data correlation"){
    corr <- cor(credit_c, method = "pearson")
    print("start plot")
    #plotting the correlation matrix - no correlations found
    
  output$ui_main1 <- renderUI( {
    tagList(
      fluidRow(
        column(6,
               h3("Corr plot"),
               renderPlot(corrplot.mixed(corr, lower = "number", upper = "circle", tl.pos = "lt", diag = "u"))
               )
      )
    )
  })  
  }
  else if(input$rb_dataset == "Dataset spread"){
    print("start plot")
    output$ui_main1 <- renderUI( {
      tagList(
        fluidRow(
          column(6,
                 h3("Data spread histogram"),
                 renderPlot(hist(credit_c$Class))
          )
        )
      )
    }) 
    
    }
})
