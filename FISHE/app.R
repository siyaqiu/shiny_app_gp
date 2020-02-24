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
                 strong(h3("About the Project (Background)", style = "color:steelblue; font-family:Helvetica")),
                 em(strong(h4("What is EDF and what are they doing with data-limited fisheries management?", style = "color:skyblue"))), 
                 p("content"),
                 br(),
                 
                 em(strong(h4("How is climate change accounted for in the FISHE framework?", style = "color:skyblue"))),
                 p("content"),
                 br(),
                 
                 em(strong(h4("Which parts of FISHE are most likely going to be affected by climate change?", style = "color:skyblue"))),
                 p("content"),
                 hr(),
                 
                 strong(h3("How was data created?", style = "color:steelblue; font-family:Helvetica")),
                 em(strong(h4("Was the data collected or was it all simulated by model runs?", style = "color:skyblue"))),
                 p("content"),
                 br(),
                 
                 em(strong(h4("What type of model are you running (generic that can be applied to all vs specific that can only be applied to a few?)", style = "color:skyblue"))),
                 "content",
                 hr(),
                 strong(h3("Variable Glossary (defined variables)", style = "color:steelblue; font-family:Helvetica")),
                 em(strong(h4("What are the variables that are going to be defined and utilized in this Shiny App?", style = "color:skyblue"))),
                 p("- Growth rates (slow, medium, and fast)"),
                 p("- Harvest Control Rules (HCRs)"),
                 p("- Error reduction"),
                 p("- Assessment intervals"),
                 p("- Climate severity (moderate -> severe)"),
                 hr(),
                 strong(h3("About FISHE Framework (What is the FISHE Framework?)", style = "color:steelblue; font-family:Helvetica")),
                 em(strong(h4("What is the Frameworkfor Intergrated Stock and Habitat Evaluation (FISHE)", style = "color:skyblue"))),
                 p("contents"),
                 br(),
                 
                 em(strong(h4("What 11 steps are there in this circular process?", style = "color:skyblue"))),
                    p("contents"),
                    br(),
                 
                 em(strong(h4("How is FISHE utilized throughout the world?", style = "color:skyblue"))),
                 p("contents"),
                 br(),
                 
                 em(strong(h4("What case studies can we utilize to show the efficiency of FISHE in other countries?", style = "color:skyblue"))),
                 p("contents")
        ),
        tabPanel("Mapping Vulnerabilities", "content"),
        tabPanel("Comparing Trade-Offs", "content"),
        tabPanel("Biomass Over Time", "content")
    )
)

server <- function(input, output){}

shinyApp(ui = ui, server = server)