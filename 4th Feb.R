############### Create a scatter plot ##############
data(mtcars)
View(mtcars)
scatter.smooth(x=mtcars$mpg,y=mtcars$disp,main="Disp ~ mpg")

############## Test for a correlation between two variables ##########
cor.test(mtcars$mpg,mtcars$disp)

############## Save and check test results ###################
cor_result <- cor.test(mtcars$mpg,mtcars$disp)
cor_result$estimate
cor_result$p.value

############# View correlation between many variables ############
library(corrplot)
corrplot(cor(mtcars))


########### Activity ###########
data(quakes)
View(quakes)

cor.test(quakes$long,quakes$depth)
cor_result <- cor.test(quakes$long,quakes$depth)
cor_result$estimate
cor_result$p.value

library(corrplot)
corrplot(cor(quakes))

scatter.smooth(x=quakes$lat,y=quakes$stations,main="lat ~ stations")
scatter.smooth(x=quakes$mag,y=quakes$stations,main="mag ~ stations")



######### T-test #############
data(sleep)
View(sleep)
t.test(extra ~ group,data = sleep)

data(trees)
View(trees)
t.test(trees$Girth,mu = 5)    ##### mu = Artificial Mean #####


######## Activity ############

arsenic <- data.frame(
  shoot_length = c(12.4,6.4,23.6,17.4,14,20.6,15,18.9,6.6,11),
  root_length = c(10,11.7,12.5,7.5,8,6.3,19,15,4,20)
)
print(arsenic)
summary(arsenic)

t.test(arsenic$root_length,mu = 15)
t_test_result<- t.test(arsenic$shoot_length,arsenic$root_length)
print(t_test_result)
t_test_result$p.value
t_test_result$estimate

arsenic_treated <- data.frame(
  Group = c("control","control","control","control","control","treatment1","treatment1","treatment1","treatment1","treatment1"),
  shoot_weight = c(12.4,6.4,23.6,17.4,14,20.6,15,18.9,6.6,11),
  root_weight = c(10,11.7,12.5,7.5,8,6.3,19,15,4,20)
)
print(arsenic_treated)
summary(arsenic_treated)
t.test(shoot_weight ~ Group, data = arsenic_treated)


############## ANOVA #######################
data("PlantGrowth")
View(PlantGrowth)
res_aov <- aov(weight ~ group,data = PlantGrowth)
summary(res_aov)

TukeyHSD(res_aov)


############# Activity ############
arsenic_treatment <- data.frame(
  Group = c("grafted","grafted","grafted","ungrafted","ungrafted","ungrafted","selfgrafted","selfgrafted","selfgrafted"), 
  shoot_weight = c(12.4,6.4,23.6,17.4,14,20.6,15,18.9,6.6),
  root_weight = c(10,11.7,12.5,7.5,8,6.3,19,15,4)
)
print(arsenic_treatment)
summary(arsenic_treatment)
res_aov <- aov(shoot_weight ~ Group,data = arsenic_treatment)
summary(res_aov)
TukeyHSD(res_aov)
head(arsenic_treatment)
tukey_result <- TukeyHSD(res_aov)
print(tukey_result)



arsenic_treatment <- data.frame(
  Group = c("grafted","grafted","grafted","ungrafted","ungrafted","ungrafted","selfgrafted","selfgrafted","selfgrafted"), 
  shoot_weight = c(12.4,6.4,23.6,17.4,14,20.6,15,18.9,6.6),
  root_weight = c(10,11.7,12.5,7.5,8,6.3,19,15,4)
)

print(arsenic_treatment)
View(arsenic_treatment)
summary(arsenic_treatment)
res_aov <- aov(shoot_weight ~ Group, data = arsenic_treatment)
summary(res_aov)
TukeyHSD(res_aov)
head(arsenic_treatment)

boxplot(shoot_weight ~ Group, data = arsenic_treatment, 
        main = "Shoot Weight Across Different Plant Groups",
        xlab = "Plant Group", ylab = "Shoot Weight",
        col = c("lightblue", "lightgreen", "pink"))


################### Simple and Multiple Linear Regression ####################
data(cars)
View(cars)
linear_mod <- lm(dist ~ speed, data = cars)
summary(linear_mod)

linear_mod2 <- lm(mpg ~ disp + qsec,data = mtcars)
summary(linear_mod2)


######### Activity ###############
data("iris")
res_aov <- aov(Petal.Length ~ Species, data = iris)
summary(res_aov)
boxplot(Petal.Length ~ Species, data = iris,
        main = "Petal Length Across Iris Species",
        xlab = "Species",
        ylab = "Petal Length (cm)",
        col = c("red", "green", "blue"))

######### Resource Test ###########


install.packages("modelr")
library(modelr) 
library(tidyverse)
data(iris)
mod <- lm(Petal.Length ~ Sepal.Length, data = iris)
iris <- iris %>% add_residuals(mod, "resid")
head(iris)
iris <- iris %>% 
  mutate(log_sepal = log2(Sepal.Length), log_petal = log2(Petal.Length))
mod_log <- lm(log_petal ~ log_sepal, data = iris)
summary(mod_log)
mod_interaction <- lm(Petal.Length ~ Sepal.Width * Petal.Width, data = iris)
summary(mod_interaction)


























