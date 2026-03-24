#!/bin/bash

# Script to concatenate WES fastq files

# ND0013
cat ND0013_S5_L00*_R1_001.fastq.gz > ND0013_R1.fastq.gz
cat ND0013_S5_L00*_R2_001.fastq.gz > ND0013_R2.fastq.gz

# ND0323
cat ND0323_S6_R1_001.fastq.gz > ND0323_R1.fastq.gz
cat ND0323_S6_R2_001.fastq.gz > ND0323_R2.fastq.gz

# ND0463
cat CC104ANXX_*_25realnf_1.fastq.gz \
    CC1HGANXX_*_25realnf_1.fastq.gz \
    CCB8FANXX_*_25realnf_1.fastq.gz > ND0463_R1.fastq.gz

cat CC104ANXX_*_25realnf_2.fastq.gz \
    CC1HGANXX_*_25realnf_2.fastq.gz \
    CCB8FANXX_*_25realnf_2.fastq.gz > ND0463_R2.fastq.gz

# ND0693
cat CC104ANXX_*_86realnf_1.fastq.gz \
    CC1HGANXX_*_86realnf_1.fastq.gz \
    CCB8FANXX_*_86realnf_1.fastq.gz > ND0693_R1.fastq.gz

cat CC104ANXX_*_86realnf_2.fastq.gz \
    CC1HGANXX_*_86realnf_2.fastq.gz \
    CCB8FANXX_*_86realnf_2.fastq.gz > ND0693_R2.fastq.gz
