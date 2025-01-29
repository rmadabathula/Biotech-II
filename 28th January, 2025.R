######## Make a dataframe in CSV and Upload ######
setwd("C:/Users/Student/Downloads")
getwd()
mydataframe <- read.csv("Biotech_2.csv")
print(mydataframe)
summary(mydataframe)

######## Make a dataframe #####
ramya <- data.frame (
  ID = c(1:4),
  Leaf_area = c(2.5, 1.6, 2.2, 2.6),
 Leaf_mass = c(22, 15, 20, 24)
)
print(ramya)
summary(ramya)

######## View the dataframe ######
ramya$Leaf_area ### Select a column ###
ramya$ID
ramya$Leaf_mass
ramya[2,] ### Select a row ###
ramya[,2] ### Select a column ###
ramya[2,2] ### Select specific value ###
ramya [2:3,1:2] ### Select multiple columns or rows ###
ramya$LMA <- ramya$Leaf_mass / ramya$Leaf_area ### do math with our dataframe ###


##### Activity: Create your own dataframe #####
madabathula_fam <- c("Murthy","Padma","Dharani","Bhaavani","Ramya")
my_people <- data.frame(
  name = madabathula_fam,
  age = c(60,45,36,28,25),
  gender = c("M","F","M","F","F"),
  commute = c(40,0,15,6,7)
)
mean(my_people$age) #### average age ####
mean(my_people$commute) #### average commute ####
min(my_people$age) #### youngest age ####
max(my_people$commute) ##### longest commute ####

####### Conditional statements ####
num1 <- 3
num2 <- 70
num1 == num2

char1 <- "ramya"
char2 <- "bhaavani"
char1 == char2

num1 < num2
num1 > num2

!(num1 < num2)
num1 != num2

var1 <- 1
var2 <- "Red"
(var1==1) & (var2=="Red")
(var1==1) & (var2=="green")
(var1==1) | (var2=="Red")
(var1==1) | (var2=="green")


###### If-else statements #####
num1 <- 3
num2 <- 70
if (num1 == num2)
{	  
  print ("num1 equals num2")
} else 
{  
  print ("num1 does not equal num2")
}

##### Functions ###### 
my_function <- function ()            ###### Define a function ####
{
  print ("Hello World!")
}
my_function()  ###### Call a function #####

####### Return in Functions ######
my_function <- function(x, y) {
  val <- x + y
}
my_function(1,2)


my_function <- function(x, y) {
  val <- x + y
  return(val)
}
my_function(1,2)


###### Activity - Decoding a function #######
my_function <- function(x,y) {
  if(x>y)
  {
    val <- x^2
    return(val)
    } else
    {
      val <- y^3
      return(val)
    }
}
my_function(1)


###### Activity: Making a function ######
activity_function <- function(x){
  random <- sample(1:5,1)
  if(x == random){
    print("These values are the same!")
  } else
  {
    print(random)
    print("These two numbers are not the same")
  }
}
activity_function(1)
activity_function(4)
activity_function(2)


####### Activity: Making your own function ########
arsenic_concentration <- function(IC50){
  threshold <- sample(10:100,1)
  if (IC50 >= threshold) {
    print("This IC50 value indicates Tolerance to Arsenic!")
  } else
  {
    print(threshold)
    print("This IC50 value indicates Susceptability to Arsenic")
  }
}
arsenic_concentration(30)
arsenic_concentration(78)
arsenic_concetration(2)
















































































































































