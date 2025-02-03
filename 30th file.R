######### Pick any data available in R using ###########
data()
data("trees")
####### Provides a summary of each column, including the minimum, maximum, mean, median, and quartiles #######
summary("trees")
####### Displays the first few rows of the data frame ######
head(trees)
###### Show the class (type) of the object my_df #######
class(trees)
###### Shows the structure of the data frame, including data types and a preview of the values ######
str(trees)
####### Returns the dimensions of the data frame (number of rows and columns) ######
dim(trees)
####### Lists the names of the columns in the data frame #########
names(trees)


##### Install and load package, dplyr #####
install.packages("dplyr")
library(dplyr)

### Pick observations by their values ###
filter()
filter(trees, Volume > 40)
### Reorder the rows ###
arrange()
arrange(trees, Girth)
### Pick variables by their names ###
select()
select(trees, Height, Volume)
### Create new variables with functions of existing variables ###
mutate()
mutate(trees, aspect_ratio = Height/Volume)
### Collapse many values down to a single summary ###
summarise()
summarise(trees, 
          mean_height = mean(Height),
          sd_height = sd(Height))
### Chain multiple functions using the pipe operator ###
trees %>%
  mutate(aspect_ratio = Height/Volume) %>%
  filter(Volume > 40) %>%
  summarise(mean_height = mean(Height),
            mean_volume = mean(Volume))
### Group variables often with summarize() and the pipe operator ###
trees %>%
  group_by(Girth) %>%
  summarise(mean_height = mean(Height))
  


##################### Activity #####################

install.packages("nycflights13")
library(nycflights13)
library(dplyr)
data(flights)
summary(flights)
head(flights)
str(flights)
dim(flights)
names(flights)


### Filter ###
filter(flights, month == 7 | month == 8 | month == 9)
### Arrange ###
arrange(flights, dep_delay)
arrange(flights, arr_delay)
### Select ###
new_document <- select(flights, month, day, dep_time)
### Mutate ###
mutate(flights, 
       speed = distance / air_time * 60)
### Summarize ###
delays <- flights %>%
  group_by(origin) %>%
  summarise(
    delay = mean(arr_delay, na.rm =TRUE)
  )

flights %>%
  group_by(origin) %>%
  summarise(
    delay = mean(arr_delay, na.rm =TRUE)
  )

#################### Activity: Process your data using dplyr ############
madabathula_fam <- c("Murthy","Padma","Dharani","Bhaavani","Ramya")
my_people <- data.frame(
  name = madabathula_fam,
  age = c(60,45,36,28,25),
  gender = c("M","F","M","F","F"),
  commute = c(40,0,15,6,7)
)
summary(my_people)

####### Basic Data visualization #######
my_people <- data.frame(  
  name = c("Murthy", "Padma", "Dharani", "Bhaavani", "Ramya"),  
  age = c(60, 45, 36, 28, 25),  
  gender = c("male", "female", "male", "female", "female"),  
  commute = c(40, 5, 12, 16, 13))
plot(my_people$age, my_people$commute)

###### Activity: Customizing base R plots #####
plot(my_people$age, my_people$commute,
     xlab = "Age",
     ylab = "Commute",
     main = "Age vs Commute",
     pch = ifelse(my_people$name == "Padma", 7,8),
     col = ifelse(my_people$name == "Padma", "navy", "black"))
legend("topright", c("Padma", "Others"),
       col = c("navy", "black"),
       pch = c(7, 8))


######## Activity: Process your data using dply ###########

arsenic_data <- data.frame(
  Treatment = c("Control", "Low As", "Medium As", "High As", "Extreme As"),
  Growth = c(45, 38, 30, 22, 15),  # Plant height (cm)
  Biomass = c(50, 42, 33, 25, 18)   # Biomass (g)
)

plot(arsenic_data$Growth, arsenic_data$Biomass)


plot(arsenic_data$Growth, arsenic_data$Biomass,
     xlab = "Plant Growth (cm)", 
     ylab = "Biomass (g)",
     main = "Impact of Arsenic Stress on Plants",
     pch = ifelse(arsenic_data$Treatment == "Control", 19, 17),
     col = ifelse(arsenic_data$Treatment == "Control", "blue", "red"))

legend("topright", c("Control", "Arsenic Treatments"), 
       col = c("blue", "red"), 
       pch = c(19, 17))










































































































































































































































