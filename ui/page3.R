div(id = "page3",
  sidebarPanel(id = "page3_sidebar",
    h3("Choose a predictor algorithm"),
    radioButtons("rb_model", label = "", choices = c("Logistic regression", "Decision tree")),
    # withBusyIndicatorUI(
    #   actionButton("btn_go", "Build model", class = "btn-primary")
    # ),
    #,
    actionButton("btn_go", "Submit", class = "btn-primary"),
    conditionalPanel(condition = "input.rb_model == 'Logistic regression'",
                     h4("logistic regression"),
                     # wellPanel(
                     #   fluidRow(
                     #     h4("Tree booster parameters"),
                     #     column(6, 
                     #            sliderInput("sld_eta", "eta", min = 0, max = 1, value = 0.3, step = 0.01),
                     #            sliderInput("sld_gamma", "gamma", min = 0, max = 100, value = 5, step = 1),
                     #            sliderInput("sld_max_depth", "max depth", min = 0, max = 50, value = 6, step = 1),
                     #            sliderInput("sld_nrounds", "n rounds", min = 20, max = 500, value = 100, step = 1)
                     #     ),
                     #     column(6, 
                     #            sliderInput("sld_min_child_weight", "min child weight", min = 0, max = 400, value = 100),
                     #            sliderInput("sld_subsample", "subsample", min = 0, max = 1, value = 0.8, step = 0.01),
                     #            sliderInput("sld_colsample", "colsample by tree", min = 0, max = 1, value = 0.8, step = 0.01)
                     #     )                
                     #   )
                     # )
    ),
    conditionalPanel(condition = "input.rb_model == 'Decision tree'",
                     h4("Decision tree parameters"),
                     wellPanel(
                       fluidRow(
                         sliderInput("minbucket", "Minimum no. of buckets", min = 2, max = 50, value = 20)
                       )
                     )
    )
  ),
  mainPanel(
    uiOutput("ui_main")
  )
)