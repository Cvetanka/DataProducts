# DataProducts

I would like to drop few words about this shiny application I have made. I hope that you will find it easy to use and fun to play with.

I got the idea from the assignment done in Exploratory Data Analysis, where we have to explore and analysed the data from
original data sets provided by JHU. I used the Air Quality data set "summarySCC_PM25.rds" and "Source_Classification_Code.rds" and extract the data related to the air pollution from motor vehicles in several US cities: Baltimore, LA, San Francisco, New York, Washington DC, Dalas, Woodstock, for the time period of 10 years (1999 - 2008). Please note that the available data are only for the years 1999, 2002, 2005 and 2009. 

Since the original data set is too large and may request too much memory after getting the results needed for shiny application I have written them in separate .csv file named "Total". This file contains aggregated by year data for air pollution from motor vehicles for the cities mentioned above. I have included Total in this repository as the support documentation in .md file format. (The code you may find at server.R). 

Further I made very simple GUI (the code you may find at ui.R), which can provide you with interactive user experience. There is one drop box and one slider bar. From the drop box you can choose the city, with the slider bar you can tune the period, either a year or two, or the entire period of ten years spanning the all data for the given years. Once finished with the selection, the graph with the results will appear on the right side of the screen. With every new selection you will get appropriate data presented on the graph. In that way you can monitor how the quality of the air varies in major US cities for a given period of time. 

If you want to test the application in your PC you have to set up the working directory and to copy the data from Total.md in .csv format and together with server.R and ui.R put in the same (working directory). Before starting you need to call library(shiny).

The original application you may find here:

https://cvetanka.shinyapps.io/DataProducts/

or 

http://cvetanka.shinyapps.io/DataProducts/

I have also made a small presentation about this application. It is published on R pubs and you may find it here:

http://rpubs.com/Cvetanka/55334


Enjoy!
