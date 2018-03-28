library(shiny)

shinyUI(
  fluidPage(
    titlePanel("Tagging"),
    sidebarLayout(
      sidebarPanel(
        textInput("question", label = h3("Write the question"), value = "")
        
      ),
      mainPanel(
        textOutput("key")
      )
    )
  )
)