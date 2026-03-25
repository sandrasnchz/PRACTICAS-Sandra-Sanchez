#!/bin/sh
#SBATCH --ntasks 1
#SBATCH --cpus-per-task 2
#SBATCH --mem 4G
#SBATCH --time 24:00:00
#SBATCH --partition middle_idx
#SBATCH --output rnaseq_%j.log

export NXF_OPTS="-Xms500M -Xmx4G"

/data/ucct/bi/pipelines/nf-core-rnaseq/nf-core-rnaseq-3.14.0/main.nf \
  -c /data/ucct/bi/research/20260204_TFM_SSANCHEZ_SM_SV_T/DOC/hpc_slurm_rnaseq.config \
  -params-file /data/ucct/bi/research/20260204_TFM_SSANCHEZ_SM_SV_T/DOC/hg19_ensmbl_rnaseq.yml \
  --input samplesheet.csv \
  --outdir 01-20260209_rnaseq \
  --skip_markduplicates \
  -resume
