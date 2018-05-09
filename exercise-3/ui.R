# UI for scatterplot
library(shiny)
library(ggplot2)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
ui<- fluidPage(
  h1("mpg dataset visualization"),
  selectInput("x-variable", label = "x-variable",
              choices = select_values, selected = 1),
  selectInput("y-variable", label = "y-variable",
              choices = select_values, selected = 1),
  sliderInput("size", label = "size of point", min = 1, 
              max = 10, value = 5),
  selectInput("color", label = "color",
              choices = c("purple", "blue", "red", "orange", "green"), 
              selected = 1),
  
  plotOutput("scatter")
  
  )

  # A page header

  
  # Add a select input for the x variable

  
  # Add a select input for the y variable


  # Add a sliderInput to set the size of each point


  # Add a selectInput that allows you to select a color from a list of choices



  # Plot the output with the name "scatter"
shinyUI(ui)