library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("Shiny app plotting data for selected years"),
    sidebarPanel(
        sliderInput("st", 
                    "Start", 
                    min = 1937,
                    max = 1960, 
                    value = 1937),
        sliderInput("en", 
                    "End", 
                    min = 1937,
                    max = 1960,
                    value = 1960)
               ),
    
    mainPanel(
        plotOutput("plot1"),
        
        tags$div(class="footer", checked=NA,
            tags$a(href="https://github.com/kossu/dev_datap/shinyapp", "If you want to check the code, click Here.")
                )
    
             )
))
