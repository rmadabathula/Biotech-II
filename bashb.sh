#!bin/bash

###current working directory 
cd /home/ramyamadabathula/NGS_practice/

###quality control
fastqc sampleB_R1.fq.gz sampleB_R2.fq.gz

###trimming
cutadapt -a AGATCGGAAG -A AGATCGGAAG -m 100 -o /home/ramyamadabathula/NGS_practice/Trimmed_data/sampleB_R1.out.fq.gz -p /home/ramyamadabathula/NGS_practice/Trimmed_data/sampleB_R2.out.fq.gz sampleB_R1.fq.gz sampleB_R2.fq.gz

###quality check
fastqc /home/ramyamadabathula/NGS_practice/Trimmed_data/sampleB_R1.out.fq.gz /home/ramyamadabathula/NGS_practice/Trimmed_data/sampleB_R2.out.fq.gz

###index the reference genome
bwa index /home/ramyamadabathula/NGS_practice/reference.fa

###Read alignment
bwa mem /home/ramyamadabathula/NGS_practice/reference.fa /home/ramyamadabathula/NGS_practice/Trimmed_data/sampleB_R1.out.fq.gz -p /home/ramyamadabathula/NGS_practice/Trimmed_data/sampleB_R2.out.fq.gz -o /home/ramyamadabathula/NGS_practice/Alignment_data/sampleB.sam

###Convert SAM to BAM
samtools view -S -b /home/ramyamadabathula/NGS_practice/Alignment_data/sampleB.sam -o /home/ramyamadabathula/NGS_practice/Alignment_data/sampleB.bam

###sort the bam file
samtools sort /home/ramyamadabathula/NGS_practice/Alignment_data/sampleB.bam -o /home/ramyamadabathula/NGS_practice/Alignment_data/sampleB.sorted.bam

###index the sorted bam file
samtools index /home/ramyamadabathula/NGS_practice/Alignment_data/sampleB.sorted.bam

###Generate mileup
bcftools mpileup -Ou -f /home/ramyamadabathula/NGS_practice/reference.fa /home/ramyamadabathula/NGS_practice/Alignment_data/sampleB.sorted.bam -o /home/ramyamadabathula/NGS_practice/Alignment_data/sampleB.mpileup

### Variant calling
bcftools call -mv -Ob -o /home/ramyamadabathula/NGS_practice/Alignment_data/variantsB.bcf /home/ramyamadabathula/NGS_practice/Alignment_data/sampleB.mpileup

### Convert BCF to VCF
bcftools view -Ov /home/ramyamadabathula/NGS_practice/Alignment_data/variantsB.bcf -o /home/ramyamadabathula/NGS_practice/Alignment_data/variantsB.vcf

### Summarize VCF file
bcftools stats /home/ramyamadabathula/NGS_practice/Alignment_data/variantsB.vcf > /home/ramyamadabathula/NGS_practice/Alignment_data/summary_b_vcf.txt

### Filter variants based on quality score
bcftools filter -e "QUAL<20" -o /home/ramyamadabathula/NGS_practice/Alignment_data/filtered_by_qual_B.vcf /home/ramyamadabathula/NGS_practice/Alignment_data/variantsB.vcf

### Summarize quality score variants
bcftools stats /home/ramyamadabathula/NGS_practice/Alignment_data/filtered_by_qual_B.vcf > /home/ramyamadabathula/NGS_practice/Alignment_data/summary_b_quality_vcf.txt

### Filter variants based on depth of coverage
bcftools filter -e "DP<10" -o /home/ramyamadabathula/NGS_practice/Alignment_data/filtered_by_depth_B.vcf /home/ramyamadabathula/NGS_practice/Alignment_data/variantsB.vcf

### Summarize depth covered variants
bcftools stats /home/ramyamadabathula/NGS_practice/Alignment_data/filtered_by_depth_B.vcf > /home/ramyamadabathula/NGS_practice/Alignment_data/summary_b_depth_vcf.txt

### Apply multiple filters together
bcftools filter -e "QUAL<20 || DP<10" -o /home/ramyamadabathula/NGS_practice/Alignment_data/filtered_variantsB.vcf /home/ramyamadabathula/NGS_practice/Alignment_data/variantsB.vcf

### Summarize multiple variants file
bcftools stats /home/ramyamadabathula/NGS_practice/Alignment_data/filtered_variantsB.vcf > /home/ramyamadabathula/NGS_practice/Alignment_data/summary_b_filtered_vcf.txt
