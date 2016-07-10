---
title       : Ozone Concentration Prediction
subtitle    : Developing Data Products Course Project
author      : Shanyun Chu
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

* This web application is designed to predict the daily Ozone concentration level in New York, given temperature, solar radiation level and wind speed.

* The data ozone comes from the package ElemStatLearn, based on which our prediction model is built.

* The algorithm we use is stochastic gradient boosting, which is efficient in handling dataset of this size as well as predictive accuracy.

--- .class #id 

## Ozone Dataset

* The dataset ozone derives from ElemStatLearn package, with 111 observations and 4 variables.

* The temperature is recorded in degree F. The range of input is suggested to be within 50 and 100.

* the solar radiation is recorded in langleys. The range of input is suggested to be within 0 and 350.

* the wind speed is recorded in mph. The range of input is suggested to be within 0 and 25.

* the Ozone concentration is recorded in 'ppb' (parts per billion)

--- .class #id

## The Prediction Algorithm

* The algorithm in use is stochastic gradient boosting. The package $caret$ and $gbm$ are required in the model establishment.

* Multivariate regression is attempted in the first place. There are two major drawbacks. 
    + the coefficient of determination R^2 is around 0.5, which is not large enough. 
    + The predicted value can take negative value, which is meaningless in the practical sense.

* Stochastic gradient boosting is well-known as its high accuracy in prediction. Although it may be time-consuming and lack interpretability, it is appropriate in relatively small size of data as in our case.

--- .class #id

## Closing remarks

The shiny application can be found [here](https://olivercsy.shinyapps.io/OzonePrediction/), and the original code can be found [here](https://github.com/OliverCSY/dataProduct).

