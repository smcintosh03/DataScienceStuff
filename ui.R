# Load the shiny package
library("shiny")

ui <- fluidPage(
  # Create a title panel
  titlePanel("Driving Distance by Tournament"),
  # Create the layout for the side bar
  sidebarLayout(
    sidebarPanel(
      # Input wull be a drop down menu where the user selects by tournament
      selectInput("tournament", "Tournament:", 
                  # List the tournament choices
                  choices = c("Arnold.Palmer", "AT.T.National", "BMW.Championship", "Buick.Open", "Deutsche.Bank",
                              "Farmers.Insurance.Open", "Quail.Hollow.Championship", "The.Barclays", "The.Honda.Classic", "The.Memorial", "The.Players.Championship",
                              "The.Tour.Championship", "Bridgestone Invitational", "Cadillac Championship")),
      hr(),
      # Add some text about where the data is from and extra info
      helpText("Data from PGA Tour Shotlink. Where no line, Tiger did not play in tournament.")
    ),
    mainPanel(
      # Plot the Driving Distance
      plotOutput("drivingDistance")
    )
  )
)
