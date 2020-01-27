div(
  div(id = "welcome-text",
    h3("Credit Card Data Visualization"),
  ),
  sidebarPanel(
  fluidRow(style = "padding-left: 15px;",
    radioButtons("rb_dataset", label = "",
                           choices = c("Data correlation", "Dataset spread"))
  ),
  actionButton("btn_go1", "Submit", class = "btn-primary")),
  mainPanel(
    uiOutput("ui_main1")
  )
)