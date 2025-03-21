#!/usr/bin/bash

###Assign sample names
NAMES="SAMPLE1 SAMPLE2"

###Make a loop for mapping multiple samples
for SAMPLE in $NAMES; do
###Run fastqc
fastqc samples/${SAMPLE}_R1.fastq.gz
fastqc samples/${SAMPLE}_R2.fastq.gz

# Alignment
hisat2 -p 8 --no-unal --dta \
-x indexes/chrX_tran \
-1 samples/${SAMPLE}_R1.fastq.gz \
-2 samples/${SAMPLE}_R2.fastq.gz \
-S SAM/${SAMPLE}.sam \
--summary-file Summary/${SAMPLE}_summary.txt

# convert SAM to BAM
samtools sort -@ 8 -o BAM/${SAMPLE}.sorted.bam SAM/${SAMPLE}.sam

#INDEXING
samtools index BAM/${SAMPLE}.sorted.bam

#GENERATE COUNT FILE
htseq-count -i gene_id -f bam -t exon -m intersection-nonempty -s no BAM/${SAMPLE}.sorted.bam genes/chrX.gtf > Count_Files/${SAMPLE}.count.txt

done 
