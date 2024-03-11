library(shiny)

ui <- bootstrapPage(
  h3("Parsed query string"),
  verbatimTextOutput("queryText")
)

server <- function(input, output, session) {
  
  # Parse the GET query string
  output$queryText <- renderText({
    query <- parseQueryString(session$clientData$url_search)
    
    # Return a string with key-value pairs
    paste(names(query), query, sep = "=", collapse=", ")
  })
}

shinyApp(ui, server)