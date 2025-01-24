################## 21st Jan ##################
1+1
1+1
hello
"hello"
2*3
data = c(1,2,3)
data
View(data)
mydataframe <- data.frame(
  name = c("ramya","vaibhavi"),
  age = c(25,23),
  height = c(150,200)
)
attach(mydataframe)
plot(age~height)
getwd("C:/Users/Student/Desktop/Treatment4 Vs Treatment5")

install.packages("ggplot2")
library(ggplot2)

1876*4736
6754+853426

newdataframe <- data.frame(
  name = c("bhaavani", "vaibhavi", "ramya"),
  destination = c("maryland", "newyork", "switzerland"),
  reason = c("wander", "snow", "dramas"),
  budget = c(100, 150, 200)
)



############### 23rd Jan ###################
x <- 1
x<-1
x < -1
(x <- -1)
(X <- -1)
(y <- 2)
y <- 2
X == x
X != x

a <- 1.0
class(a)

b <- 1L
class(b)

c <- "one"
class(c)

x <- TRUE ; y <- FALSE
class(x : y)
class(x)
class(y)

d <- 1+1i
class(d)

vector <- c(1,2,3,4)
class(vector)

vector2 <- 1:4
class(vector2)

ramya <- matrix (vector, nrow = 2, ncol = 2)
ramya

df <- data.frame(id = c("A","B","C","D"), values = vector)
df


######## my vector, matrix, and dataframe ##########
myvector <- c(1,2,3,4,5,6,7,8,9,10)
class(myvector)

myvector2 <- 1:10
class(myvector2)

ramya <- matrix (vector, nrow = 16, ncol = 11)
ramya

df <- data.frame(id = c("A","B","C","D","E","F","G","H","I","J"), values = myvector)
df

######  create empty vector #####
num_vec <- numeric(5)

####### Fill vector ####
num_vec <- c(1,2,3,4)

###### Add one more value ####
num_vec[5] <- 5
num_vec

####### To check specific value in vector ####
num_vec[3]

######### Assign a new value to vector #####
num_vec[3] <- num_vec[5]
num_vec

######## Create vectors using c() ########
cha_vec <- c("murthy", "padma", "dharani", "bhaavani","ramya")
cha_vec

######## Access multiple indices of vector ########
cha_vec[c(1,4)]

######### Name vectors #######
names(num_vec) <-c("first", "second", "third", "fourth", "fifth")
num_vec
names(num_vec) <-c("USA", "Russia", "England", "India", "Korea")
num_vec

########## Access indices by name #########
num_vec[c("second","fourth")]
num_vec[c("India", "Korea")]
num_vec

######## Activity########

### Create a numeric vector with a length of five ###
num_vec <- numeric(5)
num_vec
num_vec <- c(1,2,3,4,5)
num_vec

### Create a character vector with a length of five ###
cha_vec <- c("USA", "India", "China", "Russia", "Srilanka")
cha_vec

### Assign the character vector as names to numeric vector ###
(names(num_vec) <- cha_vec)
cha_vec["India"] <- num_vec[5]
cha_vec

### Create a new vector that contains the first, third, and fifth indices of the numeric vector ###
(new_vec <- num_vec[c(1,3,5)])

### Create a new vector that contains the names of the indices in the vector you created in 4 ###
(new_vec2 <- names(new_vec))


############### Math and Vectors ########
### multiplication ###
(x+y)*(x-y)
(8+6)*(8-6)

### division ###
y/x 
6/8
### exponent ###
x^2
8^2

### exponent ###
2^(x*y)
2^(8*6)

### square root ###
sqrt(x)
sqrt(8)

### log base 10 ###
log10(y)
log10(6)

### natural log ###
log(y)
log(6)

### log base 3 ###
log(x = x,base = 3)
log(x = 6,base = 3)


##### Activity: Vector Math ####
Leaf_area <- c(22, 34, 45, 35)
mean(Leaf_area)

Leaf_mass <- c(34, 76, 32, 89)
mean(Leaf_mass)

median(Leaf_area)
median(Leaf_mass)

max(Leaf_area)
max(Leaf_mass)

max(Leaf_area) < min(Leaf_mass)

##### create a vector ######
(LMA <- Leaf_mass / Leaf_area)

#### Average Leaf_mass / Leaf_area ######
mean(LMA)
