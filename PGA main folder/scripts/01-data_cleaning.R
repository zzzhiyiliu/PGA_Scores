#### Preamble ####
# Purpose: Clean the PGA data
# Author: Zhiyi Liu
# Data: 27 April 2022
# Contact: zhiyi.liu@mail.utoronto.ca


#### Workspace setup ####
library(tinytex)
library(tidyverse)
# Read in the raw data. 
data<- read.csv("pgaTourData.csv",header=TRUE)
                  
#There are 18 variables in the dataset.
#It contains information about the general performance of the players.
#There are also 5 variables that are focused on the statistics about players short game performances. 

#Removing missing values from the wanted variables
m<- data %>%
  filter(Avg.Distance != 'N/A')
m<- m %>%
  filter(Fairway.Percentage != 'N/A')
m<- m %>%
  filter(Rounds != 'N/A')
m<- m %>%
  filter(Average.Score != 'N/A')
m<- m %>%
  filter(Money != 'N/A')
m<- m %>%
  filter(Average.Putts != 'N/A')
m<- m %>%
  filter(gir != 'N/A')

#After the cleaning, the dataset was left with 1678 observations

#In the analysis of the number of wins, missing variables are removed
#It was not removed since the beginning because only 283 players had a win
m<- m %>%
  filter(gir != 'N/A')

         