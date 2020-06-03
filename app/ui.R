library("shiny")

ui <- fluidPage(
  titlePanel("Comparação de gráficos e variáveis com Shiny!"),
  sidebarLayout(
  mainPanel(
    selectInput(
      "variavel",
      "Comparar salário com:",
      c(
        "Tratamento",
        "Nivel",
        "Exp_rel",
        "Mot_pes",
        "Gênero",
        "Niv_edu"
      ),
      selected = "Tratamento",
      multiple = FALSE,
      selectize = TRUE,
      width = NULL,
      size = NULL
    ),
    selectInput(
      "grafico_escolhido",
      "Escolha um gráfico:",
      c("boxplot", "violino", "dispersão"),
      selected = "boxplot"
    )
  ),
  mainPanel(plotOutput("grafico"))
))