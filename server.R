library(shiny)
library(data.table)

# Define server logic
shinyServer(function(input, output) {
    
    # Predict next word
    observe({
        lookup <- as.character(input$lookup)
        result <- nextword(lookup)
        
        output$prediction<- renderPrint(result)
        
    })
})