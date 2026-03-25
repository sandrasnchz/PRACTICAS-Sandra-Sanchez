#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=48G
#SBATCH --time=2-00:00:00
#SBATCH --partition=middle_idx
#SBATCH --output=sarek_ND0463_%j.log

export NXF_OPTS="-Xms2G -Xmx48G"

nextflow run /data/ucct/bi/pipelines/nf-core-sarek/nf-core-sarek-3.1.1/workflow/main.nf     -c /data/ucct/bi/research/20260204_TFM_SSANCHEZ_SM_SV_T/DOC/hpc_slurm_sarek.config     --input samplesheet_ND0463.csv     --outdir 01-sarek_ND0463     --genome GATK.GRCh37     --dbsnp /data/ucct/bi/references/eukaria/homo_sapiens/hg19/1000genomes_b37/variants/20131208/dbsnp_138_mod.b37.vcf.gz     --dbsnp_tbi /data/ucct/bi/references/eukaria/homo_sapiens/hg19/1000genomes_b37/variants/20131208/dbsnp_138_mod.b37.vcf.gz.tbi     --tools haplotypecaller     --joint_germline     --igenomes_ignore     --igenomes_base /data/ucct/bi/references/igenomes/     -resume
