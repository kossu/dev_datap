library(shiny)
library(datasets)
data <- airmiles

shinyServer(function(input, output) {
    
    s <- reactive({input$st - min(time(data)) + 1}) # start year (as "position" in a vector) - needed for subsetting
    e <- reactive({input$en - min(time(data)) + 1}) # end year (as "position" in a vector) - needed for subsetting
    ax <- reactive({seq(input$st, input$en, 1)}) # x-axis labels
    d1 <- reactive({data[s():e()]}) # subset data
    
    output$plot1 <- renderPlot({
        plot(ax(), d1(), type="l", col = "red4", lwd = 3, xlab = "Year", 
             ylab = "Passenger miles", main = "Passenger Miles on Commercial US Airlines")
    })
})
