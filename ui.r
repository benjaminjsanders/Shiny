library(shiny)

shinyUI(fluidPage(

titlePanel("Driver Deaths"),

  sidebarLayout(
    sidebarPanel(
      selectInput("variable", "Variable:",
                  c("Total Drivers" = "drivers",
                    "Distance Driven" = "kms",
                    "Petrol Price" = "PetrolPrice"
					))
    ),

    mainPanel(
      h3(textOutput("caption")),

      plotOutput("plot"),
	  h4(verbatimTextOutput("fit"))
    )
  )
))