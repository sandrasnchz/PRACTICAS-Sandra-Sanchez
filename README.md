# Bioinformatics Analysis of NGS Data

This repository contains the scripts, workflows and selected results generated during my internship at Bioinformatics Unit of Instituto de Salud Carlos III (BU-ISCIII), focused on the analysis of next-generation sequencing (NGS) data, including Whole Exome Sequencing (WES), Whole Genome Sequencing (WGS) and RNA-seq.

## Contents

- *ANALYSIS/*: Scripts and pipelines used for data processing and analysis (e.g., QC, alignment, variant calling).
- *RESULTS/*: Relevant output files such as processed tables and figures derived from the analyses.
- *DOC/*: Configuration files, parameters and additional documentation.
- *RAW/*: Placeholder directory for raw sequencing data (not included in the repository due to size and privacy constraints).
- *REFERENCES/*: Reference files used in the analyses (e.g., reference genomes, annotations, auxiliary resources).

## Notes

Due to size and data protection constraints, raw sequencing data (e.g., FASTQ, BAM/CRAM files) and large intermediate files are not included in this repository. The repository is structured to ensure reproducibility of the analyses while maintaining a manageable size.

## Objectives

The aim of this project is to apply bioinformatics approaches to identify genetic variants and expression alterations potentially associated with undiagnosed diseases, using standardized and reproducible workflows.

## Technologies

- Nextflow / nf-core pipelines
- R / Bioconductor
- Python / Bash
- Standard NGS tools (e.g., FastQC, BWA, GATK, STAR)
