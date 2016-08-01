---
title       : Histogram of Chicken Weight based on Feed
subtitle    : This is a histogram of chicken weight based on the chicken feed selected in input
author      : Priya Kasi-Chari
job         : Product Strategy/Manager
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Purpose

This project provides a histogram distribution and mean of chicken weight based on the chicken feed which is selected by the user.

--- .class #id 

## Dataset Used

1. This project uses the chickwts dataset that has about 71 observations and 2 variables.
2. The variables are weight and feed.
3. Below is the first 5 rows of the dataset.


```r
head(chickwts)
```

```
##   weight      feed
## 1    179 horsebean
## 2    160 horsebean
## 3    136 horsebean
## 4    227 horsebean
## 5    217 horsebean
## 6    168 horsebean
```

--- .class #id 

## Input

The user selects the chicken feed for which he/she would like to get the chicken weight distribution and mean.

Below is the code used in the io.R

sidebarLayout(
    sidebarPanel(
        selectInput('infeed', 'Feed', unique(as.character(chickwts$feed)))))

--- .class #id 
## Output

Based on the chicken feed selected by the user, a histogram is created for the chicken weight for the feed selected and the average chicken weight.

--- .class #id 

## Thank you for your time!


