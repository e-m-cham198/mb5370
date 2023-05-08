#Workshop 3:Reproducible Work

##4.1 Setting up Git and Github

#Github allows version control of your work and shareability of your code, notes, and figures. 

#install.packages("usethis") #after setting up Github account this package is used to connect R Studio to your github repository
library(usethis)
use_git_config(user.name = "e-m-cham198", user.email = "emilee.chamberland@my.jcu.edu.au")




hc <- read.csv("C:/Users/custo/Dropbox/PC/Downloads/Value (1).csv") #bad graph data

#first run at reconstruction
ggplot(data = hc, mapping = aes(x = Month, y = Cost, group = Barter, color = Barter)) +
 # geom_line() +
  geom_point() +
  labs(subtitle = "Value vs After Barters",
     caption = "Data from horserookie.com") 
  scale_x_continuous("month", breaks = seq(1,12, by = 1), limits = c(1,12))#, labels = c("jan", "feb", "Mar", "Apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec"))



test <- read.csv("C:/Users/custo/Dropbox/PC/Downloads/test.csv") #est data

ggplot(data = hc, mapping = aes(x = Month, y = Cost)) +
  geom_point(mapping = aes(group = Barter, color = Barter)) +
  geom_line(mapping = aes(group = Barter, color = Barter)) +
  scale_x_continuous("Month", breaks = seq(1,12, by = 1), labels = c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")) +
  scale_y_continuous("Dollars ($)", breaks = seq(500,3000, by = 500), limits = c(500, 3000)) +
  scale_color_manual(values = c("Value" = "darkgreen", "After Barters" = "springgreen")) +
  theme_classic() +
  labs(title = "Cost of horse ownership in 2020", 
       subtitle = "Monthly value of expenses vs Barter payouts",
       caption = "Data from horserookie.com") +
  theme(legend.title = element_blank())
  

