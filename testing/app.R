#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(tidyverse)
library(shiny)
library(here)
library(shinythemes)

# read in data
fishe <- read_csv(here::here("raw_data", "alldata_combined.csv"))

ui <- fluidPage(
    theme = shinytheme("darkly"),
    titlePanel("Evaluationg Adaptive Management Strategies for Climate-Resilient Fisheries"),
    tabsetPanel(
        tabPanel("Introduction",
            h3("About the Project (Background)"),
            h5("What is EDF and what are they doing with data-limited fisheries management?"), 
            "content",
            h5("How is climate change accounted for in the FISHE framework?"),
            "content",
            h5("Which parts of FISHE are most likely going to be affected by climate change?"),
        "content",
            h3("How was data created?"),
            h5("Was the data collected or was it all simulated by model runs?"),
        "content",
            h5("What type of model are you running (generic that can be applied to all vs specific that can only be applied to a few?)"),
        "content",
            h3("Variable Glossary (defined variables)"),
            h5("What are the variables that are going to be defined and utilized in this Shiny App?"),
        "content",
            h3("About FISHE Framework (What is the FISHE Framework?)"),
            h5("What is the Frameworkfor Intergrated Stock and Habitat Evaluation (FISHE)"),
        "contents",
            tabPanel("What 11 steps are there in this circular process?", "contents"),
            tabPanel("How is FISHE utilized throughout the world?", "contents"),
            tabPanel("What case studies can we utilize to show the efficiency of FISHE in other countries?", "contents")
        ),
        tabPanel("Mapping Vulnerabilities", "content"),
        tabPanel("Comparing Trade-Offs", "content"),
        tabPanel("Biomass Over Time", "content")
    )
)

server <- function(input, output){}

shinyApp(ui = ui, server = server)