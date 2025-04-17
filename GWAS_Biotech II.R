install.packages("devtools")
source("http://www.zzlab.net/GAPIT/GAPIT.library.R") 
if(!require(gplots)) install.packages("gplots")
if(!require(LDheatmap)) install.packages("LDheatmap")
if(!require(genetics)) install.packages("genetics")
if(!require(ape)) install.packages("ape")
if(!require(compiler)) install.packages("compiler")
if(!require(grid)) install.packages("grid")
if(!require(bigmemory)) install.packages("bigmemory")
if(!require(EMMREML)) install.packages("EMMREML")
if(!require(scatterplot3d)) install.packages("scatterplot3d")
if(!require(rgl)) install.packages("rgl")

if(!'multtest'%in% installed.packages()[,"Package"]){
  if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
  BiocManager::install("multtest")
  BiocManager::install("snpStats")
}



# Load GAPIT function
source("http://zzlab.net/GAPIT/gapit_functions.txt")

# phenotypes
myY <- read.table(file = "http://zzlab.net/GAPIT/data/mdp_traits.txt", header = TRUE)
View(myY)

# SNP marker matrix
myGD <- read.table(file="http://zzlab.net/GAPIT/data/mdp_numeric.txt",header = TRUE)
head(myGD)[ ,c(1:10)] # just check the top 10 columns

# map information of markers 
myGM <- read.table(file="http://zzlab.net/GAPIT/data/mdp_SNP_information.txt",header = TRUE)
head(myGM)

# Association
myGAPIT <- GAPIT(
  Y=myY[,c(1,2)],
  GD=myGD,
  GM=myGM,
  PCA.total=3,
  model=c("MLM"))

# Check the main results in R
View(myGAPIT$GWAS)

# Load library (install if necessary)
install.packages("qqman")
library(qqman)
library(ggplot2)

# Load result
result <- read.csv("GAPIT.Association.GWAS_Results.MLM.EarHT.csv",  header = T)
head(result)

# Manhattan plot
manhattan(result, main="Ear height", chr = "Chr", bp = "Pos", p = "P.value", snp = "SNP",           
          col = c("blue", "orange"),           
          genomewideline = 3.5,  highlight = "PZA03188.4"  )


# Save the plot
png("manhattan_plot.png", width = 8, height = 4, units = "in", res = 300 )

manhattan(res, main="Ear height", chr = "Chr", bp = "Pos", p = "P.value", snp = "SNP",           
          col = c("blue", "orange"),           
          genomewideline = 3.5,  highlight = "PZA03188.4"  )

dev.off()



### Activity

# Load GAPIT function
source("http://zzlab.net/GAPIT/gapit_functions.txt")

# phenotypes
myY <- read.table(file = "http://zzlab.net/GAPIT/data/mdp_traits.txt", header = TRUE)
View(myY)

# SNP marker matrix
myGD <- read.table(file="http://zzlab.net/GAPIT/data/mdp_numeric.txt",header = TRUE)
head(myGD)[ ,c(1:10)] # just check the top 10 columns

# map information of markers 
myGM <- read.table(file="http://zzlab.net/GAPIT/data/mdp_SNP_information.txt",header = TRUE)
head(myGM)

# Association
myGAPIT <- GAPIT(
  Y=myY[,c(1,3)],
  GD=myGD,
  GM=myGM,
  PCA.total=3,
  model=c("MLM"))

# Check the main results in R
View(myGAPIT$GWAS)

# Load library (install if necessary)
install.packages("qqman")
library(qqman)
library(ggplot2)

# Load result
result <- read.csv("GAPIT.Association.GWAS_Results.MLM.dpoll.csv",  header = T)
head(result)

# Manhattan plot
manhattan(result, main="Days for Pollination", chr = "Chr", bp = "Pos", p = "P.value", snp = "SNP",           
          col = c("blue", "orange", "pink", "green","yellow"),         
          genomewideline = 3.5,  highlight = "PZA03188.4"  )


# Save the plot
png("manhattan_plot.png", width = 8, height = 4, units = "in", res = 300 )

manhattan(result, main="Days for Pollination", chr = "Chr", bp = "Pos", p = "P.value", snp = "SNP",           
          col = c("blue", "orange", "pink", "green","yellow"),           
          genomewideline = 3.5,  highlight = "PZA03188.4" )

dev.off()


































































































