library("shiny")
library("ggplot2")
load("base_dados.RData")

server <- function(input, output) {
  
  output$grafico <- renderPlot({
    if (input$grafico_escolhido == "boxplot") {
      ggplot(base_dados, aes(x = base_dados[[input$variavel]], y = Salário)) +
        geom_boxplot(aes_string(fill = factor(base_dados[[input$variavel]]))) +
        labs(x = input$variavel,
             y = "Salário",
             title = paste("Gráfico Boxplot:",input$variavel,"vs. Salário"))
    } else if (input$grafico_escolhido == "dispersão") {
      ggplot(base_dados, aes(x = base_dados[[input$variavel]], y = Salário)) +
        geom_point() +
        labs(x = input$variavel,
             y = "Salário",
             title = paste("Gráfico de Dispersão:",input$variavel,"vs. Salário"))
    } else if (input$grafico_escolhido == "violino"){
      ggplot(base_dados, aes(x = base_dados[[input$variavel]], y = Salário)) +
        geom_violin(aes_string(fill = factor(base_dados[[input$variavel]]))) +
        labs(x = input$variavel,
             y = "Salário",
             title = paste("Gráfico Violino:",input$variavel,"vs. Salário"))
    }
  })
}