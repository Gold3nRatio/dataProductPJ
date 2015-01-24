library(shiny)

shinyUI(fluidPage(
    titlePanel("R Package Dependency"),
    
    sidebarLayout(
        sidebarPanel(
            p("Enter an R package name."),
            br(),
            p("If the package has dependencies, it will display the list and
              other information."),
            
            textInput("pck", "Package Name", "ggplot2"),
            actionButton("get", "Get Information"),
            
            br()
            ),
        
        mainPanel(
            h1('R Package Dependency'),
            p('There are thousands of R packages in CRAN.  Most of the time, the 
              package will depend on other packages. To install an R package, 
              often time a simple code could be ran to start the installation, 
              such as:'),
            code('install.packages("ggplot2")'),
            p('However, there are times when installation is not accepted and 
              the user must install packages from their local drive.  In this 
              case, it is useful to find out what a certain package depends to 
              ensure all components are installed.'),
            br(),
            p('The R Package Dependency application will identify the package 
              you need for installation and list them by:'),
            tags$ul(
                tags$li('Depends'),
                tags$li('Import, and'),
                tags$li('Suggest')
            ),
            br(),
            
            h1('Packages Name'), 
            p('The following are the list of packages associated with:'),
            strong(textOutput("pckName")),
            
            textOutput('depends'),
            textOutput('imports'),
            textOutput('suggests')
            
            )
        )
        ))