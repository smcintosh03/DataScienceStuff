# Load the data from the csv file
data1 <- read.csv("TigerTable.csv", header = TRUE)
# Coerce the data as a matrix
data <- as.matrix(data1)
# Check the structure of the data
str(data)
# View the data
data
server <- function(input, output) {
  
  output$drivingDistance <- renderPlot({
    # Create a barplot 
    barplot(data[,input$tournament], 
            # Graph customizations
            main=input$tournament,
            ylab="Driving Distance",
            xlab="Year",
            ylim = c(0, 400),
            col = colors() [134],
            names.arg = c("2007", "2008", "2009", "2010", "2011", "2012", "2013", "2014", "2015")
    )
  })
}
