OrbitPeriod <- function(dist) dist^1.5

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$dist})
    output$prediction <- renderPrint({OrbitPeriod(input$dist)})
  }
)