library(shiny)
keyword$KEYWORD<-as.character(keyword$KEYWORD)
shinyServer(
  function(input,output)
    {
    output$key<-renderPrint(
    for(i in 1:3362){
      value<-grepl(tolower(keyword$KEYWORD[i]),tolower(input$question))
      if(value=="TRUE"){
        print(keyword$ID[i])
      }
    }
  )
}
)
