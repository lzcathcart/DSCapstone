library(data.table)

# allpredictiontables <- data.table(read.csv("allpredictiontables.csv", stringsAsFactors = FALSE))

# Define UI
shinyUI(fluidPage(theme = "bootstrap.css",
                  
                  # Application title
                  titlePanel("Next Word: Shiny Prediction App"),
                  
                  # Sidebar for predicted words to return
                  sidebarLayout(
                          sidebarPanel(
                                  h2('Introduction'),
                                  h4("This algorithm is based on Katz's Back-Off Model using Unigrams through Trigrams, and
              is part of the Capstone Project for the John Hopkins Data Science Specialization."),
                                  h2('Input'),
                                  h4('The Lookup Word or Phrase box on your right is where you should type your
                        word or phrase for suggested predictions.'),
                                  h4('Suggestion: works best when one or two words are selected.'),
                                  h2('Output'),
                                  h4('Under the Predicted Next Words will display the most frequently
              used word through the least.')
                          ),
                          
                          mainPanel(
                                  
                                  h2('Lookup Word or Phrase:'),
                                  tags$textarea(id = 'lookup', rows = 2, cols = 50),
                                  HTML("<br>"), HTML("<br>"),
                                  h2('Predicted Next Words'),
                                  h4(verbatimTextOutput('prediction'))
                                  
                          )
                  )
))