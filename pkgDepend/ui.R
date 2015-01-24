library(shiny)

shinyUI(fluidPage(
  titlePanel("R Package Dependency"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Enter an R package name.
               If the package has dependencies, it will display the list and
               other information."),
    
      textInput("pck", "Package Name", "ggplot2"),
    # not done for the following
    # show a list of packages that it depends on
    # show a list of import
    # show a list of suggested packages
      dateRangeInput("dates", 
        "Date range",
        start = "2013-01-01", 
        end = as.character(Sys.Date())),
   
      actionButton("get", "Get Stock"),
      
      br(),
      br(),
      
      checkboxInput("log", "Plot y axis on log scale", 
        value = FALSE),
      
      checkboxInput("adjust", 
        "Adjust prices for inflation", value = FALSE)
    ),
    
    mainPanel(plotOutput("plot"))
  )
))