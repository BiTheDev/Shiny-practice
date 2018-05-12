server<- function(input, output) {
  output$years <- renderPrint({ input$year })
  output$months <- renderPrint({ input$month })
  output$days <- renderPrint({ input$day })
}

ui<-fluidPage(
  fluidRow(
    column(4,
           # Copy the line below to make a slider bar 
           sliderInput("year", label = h3("Year"), min = 1980, 
                       max = 2100, value = 1980)
    ),
    column(4,
           # Copy the line below to make a slider range 
           sliderInput("month", label = h3("Month"), min = 1, 
                       max = 12, value = 1)
    ),
    column(4,
           # Copy the line below to make a slider range 
           sliderInput("day", label = h3("Day Range"), min = 1, 
                       max = 31, value = 1)
    )
  ),
  hr(),
  fluidRow(
    column(4, verbatimTextOutput("years")),
    column(4, verbatimTextOutput("months")),
    column(4, verbatimTextOutput("days"))
  )
)
shinyApp(ui = ui, server = server)