shiny_app
========================================================
author: mk
date: 20/11/2017
autosize: true

Shiny app - plots data based on user input 1/5
========================================================

This is an app (for the developing data products class) will only plot timeseries data based on user input (user chooses the years).
- User will select start date using a slider
- User will select end date using a slider
- App will subset and plot the data and add axis labels

Shiny app - data used 2/5
========================================================

- This app will use the airmiles data as an example. 


```r
str(airmiles)
```

```
 Time-Series [1:24] from 1937 to 1960: 412 480 683 1052 1385 ...
```

```r
summary(airmiles)
```

```
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    412    1580    6431   10528   17532   30514 
```

Shiny app - user input 3/5
========================================================
- The user will have to  give the start and end years. The data is time-series vector, the "positions" of values are needed for subsetting


```r
s <- reactive({input$st - min(time(data)) + 1}) # start year 
e <- reactive({input$en - min(time(data)) + 1}) # end year
```

Shiny app - server respone 4/5
========================================================
- Server will subset data and plot the data with appropriate x- and y-axis labels.


```r
d1 <- reactive({data[s():e()]}) # subset data
ax <- reactive({seq(input$st, input$en, 1)}) # x-axis labels
```

Shiny app - live example 5/5
========================================================
 - Here's a live example on how it works:
 https://kossu.shinyapps.io/ddp_shiny/
 - And here's the complete code:
 https://github.com/kossu/dev_datap/tree/master/shinyapp
 
 
 
 
 
