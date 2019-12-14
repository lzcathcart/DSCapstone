library(shiny)
library(data.table)

allpredictiontables <- data.table(read.csv("allpredictiontables.csv", stringsAsFactors = FALSE))

source('nextword.R')