library(shiny)

#setwd("C:/Users/Cvetanka/Desktop/Cvetanka/Coursera/Air Quality/DataProducts")

#NEI <- readRDS("summarySCC_PM25.rds")
#SCC <- readRDS("Source_Classification_Code.rds")
#NEI <- transform(NEI, year = factor(year), type = factor(type))
#Motor_Vehicles <- NEI[(NEI$type == "ON-ROAD") & (NEI$fips=="24510"|NEI$fips=="06037"
  #                | NEI$fips == "11001" |NEI$fips == "19001"| NEI$fips == "51001"| NEI$fips =="05055" | NEI$fips == "21163"),]

#Motor_Vehicles <- read.csv("Motor_Vehicles")
#Motor_Vehicles$City[Motor_Vehicles$fips=="24510"] <- "Baltimore City"
#Motor_Vehicles$City[Motor_Vehicles$fips=="06037"] <- "Los Angeles"
#Motor_Vehicles$City[Motor_Vehicles$fips=="11001"] <- "Washington DC"
#Motor_Vehicles$City[Motor_Vehicles$fips=="19001"] <- "Dalas"
#Motor_Vehicles$City[Motor_Vehicles$fips=="51001"] <- "New York City"
#Motor_Vehicles$City[Motor_Vehicles$fips=="05055"] <- "San Francisco"
#Motor_Vehicles$City[Motor_Vehicles$fips=="21163"] <- "Woodstock"
#myvars <- c("year","Emissions","City")
#new <- Motor_Vehicles[myvars]
#Total<- aggregate(Emissions~year+City, new, sum)
Total <- read.csv("Total.csv",sep = ",", header = TRUE)
cities <- as.character(unique(Total$City))

library(ggplot2)
library(rCharts)



shinyServer(
  function(input, output, clientData, session) {

    
    
    
    
    selectedCity <- cities[1];
    
    updateSelectInput(session, "city",
                      choices = cities,
                      selected = cities[1] 
    )
    
    
    output$plot1 <- renderPlot({
      f <- Total[Total$City == input$city & Total$year %in% seq(input$range[1],input$range[2]),]
      
      gg <- ggplot(f, aes(year, Emissions))
      pp <- gg+geom_point(size=5) + facet_grid(.~City)+labs(title="Emissions from motor vehicles")
      print(pp)
    })
    
})
