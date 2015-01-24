# server.R
pack <- available.packages()

shinyServer(function(input, output) {
    
    output$pckName <- renderText({
        input$pck
    })
    
    output$depends <- renderText({
        paste('List of dependencies are:', pack[input$pck, 'Depends'])
    })
    
    output$imports <- renderText({
        paste('List of imports are:', pack[input$pck, 'Imports'])
    })
    
    output$suggests <- renderText({
        paste('List of suggests are:', pack[input$pck, 'Suggests'])
    })
    
})