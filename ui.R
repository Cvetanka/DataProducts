shinyUI(fluidPage(
  titlePanel("Air pollution in US cities"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Variation of the air pollution across the US cities for a given period of time"),

      selectInput("city", 
                  label = "Choose a city",
                  choices = c('Please wait...')
                  ),
      
      sliderInput("range", 
                  label = "Year of interest: 1999 2002 2005 2008",
                  min = 1999,
                  max = 2008,
                  value = c(1999,2002,2005,2008),
                  format="####")
     
     
    ),
    
    
    mainPanel(
      textOutput("text1"),
      textOutput("text2"),
      plotOutput("plot1")
    )
  )
))

