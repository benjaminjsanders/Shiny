library(shiny)
library(datasets)

data(Seatbelts)
data <- as.data.frame(Seatbelts)

shinyServer(function(input, output) {
	formulaText <- reactive({paste("DriversKilled ~", input$variable)})
	output$caption <- renderText({formulaText()})
	output$plot <- renderPlot({ 
		plot(as.formula(formulaText()), data = data)
		fit <- lm(as.formula(formulaText()), data = data)
		abline(fit, col="red")
		#lines(data$DriversKilled, as.formula(paste("data$",input$variable)), col=red)
		})
		output$fit <- renderPrint(summary(fit))
 })