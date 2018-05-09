### Exercise 3 ###

library(shiny)
library(ggplot2)
# Create a shiny server that creates a scatterplot. 
server <- function(input, output){
  output$scatter <- renderPlot({
    x_data <- mpg[[input$`x-variable`]]
    y_data <- mpg[[input$`y-variable`]]
    
  
    ggplot(mpg) +
      geom_point(mapping = aes(x = x_data, y = y_data),
                 size=input$size,
                 color=input$color) +
      ggtitle(paste0(x_data, " vs. ", y_data)) +
      xlab(input$`x-variable`) +
      ylab(input$`y-variable`)
    
  })
}



# It should take as an input the x_var, y_var, color, and size
# Save the result of `renderPlot` to output$scatter

    # Store x and y values to plot


    # Store the title of the graph in a variable

    
    # Create ggplot scatter
shinyServer(server)

