library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("BMI Calculator"),
    sidebarPanel(
        h4('Input your Weight and Height'),

        numericInput('weight', 'Weight (in Pounds)', 125),
        
        numericInput('height', 'Height (in inches)', 55)
  
    ),
    mainPanel(
        h4('Your Body Mass Index(BMI)'),
        textOutput("BMI_Out"),
        br(),
        h4('Instructions'),
        helpText("This calculator provides BMI and the corresponding BMI weight status category. Use this calculator for adults, 20 years old and older."),
        code("Enter your Weight in pounds"),
        helpText("Enter the weight of the individual (in inches)."),
        code("Enter your Height in inches"),
        helpText("Enter the Height of the individual (in pounds)."),
        h4("BMI Categories:"), 
        helpText("Underweight = <18.5"),
        helpText("Normal weight = 18.5–24.9"), 
        helpText("Overweight = 25–29.9"), 
        helpText("Obesity = BMI of 30 or greater")
    )
))
