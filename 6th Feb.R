library(BiocManager)
library(DESeq2)
library(ggplot2)
library(pheatmap)
library(GOplot)
library(topGO)
library(clusterProfiler)
library(ggforce)

watermelon_effects <- read.csv("Treatment_4vsTreatment_5.csv", header = TRUE, sep = ",")
watermelon_effects_filtered <- subset(watermelon_effects, padj < 0.05 & abs(log2FoldChange) > 2 )
watermelon_effects_filtered <- watermelon_effects_filtered[order(watermelon_effects_filtered$log2FoldChange & watermelon_effects_filtered$padj ),]
watermelon_effects_filtered <- watermelon_effects_filtered[order(watermelon_effects_filtered$log2FoldChange & watermelon_effects_filtered$padj ),]

summary(watermelon_effects_filtered)

plotMA(watermelon_effects_filtered)

abline(h=c(-2,2), col="red", lwd=2)

watermelon_effects_filtered <- watermelon_effects_filtered[!is.na(watermelon_effects_filtered$padj), ]

summary(watermelon_effects_filtered)

write.table(watermelon_effects_filtered, file = "Treatment_4vsTreatment_5_filtered.tsv", sep = "\t", col.names = NA, quote = FALSE)

