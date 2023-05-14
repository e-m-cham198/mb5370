#----------------------------------------#
# MB5371: Module 4 Assessment 1 - Plot Reconstruction
# Emilee Chamberland
# May 2023

## Workspace: "C:\Users\custo\OneDrive\Documents\JCU _2023\SP1\MB5370\Module4_R\github\mb5370\R\PlotDeconstruction.R"
#------------------------------------------#
#Load tidyverse package

library(tidyverse)
#------------------------------------------#

# Original graph data 

#------------------------------------------#

# Original graph acquired from https://horserookie.com/cost-of-owning-a-horse-2020-expense-report-summary/
# Data extracted from the graph using https://automeris.io/WebPlotDigitizer/ and saved as a .csv file

#------------------------------------------#

# Load the data

hc <- read.csv("~/JCU _2023/SP1/MB5370/Module4_R/github/mb5370/data/Plot_Recon_Data.csv") #.csv file containing the extracted data from the 'bad graph'
# Data can be located in Github repository under "data"

#------------------------------------------#

# Plot Reconstruction

ggplot(data = hc, mapping = aes(x = Month, y = Cost)) + # set the coordinate space and data
  geom_point(mapping = aes(group = Barter, color = Barter)) + #add point data layer
  geom_line(mapping = aes(group = Barter, color = Barter)) + #add line data layer to connect the points on the graph
  scale_x_continuous("Month", breaks = seq(1,12, by = 1), labels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")) + #set the x axis label, breaks and tick labels
  scale_y_continuous("Dollars ($)", breaks = seq(500,3000, by = 500), limits = c(500, 3000)) + #set the y axis label, breaks and limits
  scale_color_manual(values = c("Value" = "darkgreen", "After Barters" = "springgreen")) + #set the color scales for the data
  theme_classic() + #set the theme - classic theme has x & y axis lines with no gridlines
  labs(title = "Cost of horse ownership in 2020", #set the title
       subtitle = "Monthly value of expenses vs Barter payouts", #set the subtitle, sits below the title to add additional information
       caption = "Data from horserookie.com") + # set the caption - where the data was acquired or any other additional information
  theme(legend.title = element_blank()) #remove the legend title
  

