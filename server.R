shinyServer(
    function(input, output){
        output$BMI_Out <- renderText({ calculateBMI(input$weight, input$height) })

    }
)

calculateBMI <- function (weight, height) 
{
    result <- (weight / (height *height))*703
    return(round(result, digits = 2))
}
