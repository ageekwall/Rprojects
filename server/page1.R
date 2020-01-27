observeEvent(input$btn_go1, {
  output$ui_main1 <- renderUI( {
    tagList(
      fluidRow(
        # column(6,
        #        h3("Confusion Matrix"),
        #         renderPrint(conf_mat)),
        column(6,
               h3("Tree plot")
               )
      )
    )
  })  
})
