

# Define UI for miles per gallon app ----
ui <- pageWithSidebar(
  
  # App title ----
  headerPanel("Miles Per Gallon"),
  
  # Sidebar panel for inputs ----
  sidebarPanel(),
  
  # Main panel for displaying outputs ----
  mainPanel(
  textOutput("myTextOutput"),
  )
)

# Define server logic to plot various variables against mpg ----
server <- function(input, output) {
	#i <- installed.packages()
	session_ID <- reactive({ as.character(floor(runif(1)*1e20)) })
	output$myTextOutput <- renderPrint({ 
										paste0("session_ID = ", session_ID())
									 })
	#output$myTextOutput <- renderPrint({ 
	#									cat(unname(sort(unique(i[,1]))), sep=" \n") 
	#								 })
}

shinyApp(ui, server)