#!/bin/bash

# Script to generate interval_list files for all WES samples

module load singularity

GENOME_DIR="/data/ucct/bi/references/eukaria/homo_sapiens/hg19/1000genomes_b37/genome"
DICT="${GENOME_DIR}/human_g1k_v37_decoy.dict"
PICARD_IMG="/data/ucct/bi/pipelines/singularity-images/picard:2.25.1--hdfd78af_1"

WORKDIR=$PWD

echo "Generating interval_list files"
echo "Working directory: $WORKDIR"


# ND0013 - MedExome

singularity exec \
-B $WORKDIR:$WORKDIR \
-B $GENOME_DIR:$GENOME_DIR \
$PICARD_IMG \
picard BedToIntervalList \
I=$WORKDIR/MedExome_hg19_capture_plus50pb_targets.bed \
O=$WORKDIR/MedExome_hg19_capture_plus50pb_targets.interval_list \
SD=$DICT

echo "Created MedExome_hg19_capture_plus50pb_targets.interval_list"


# ND0323 - TruSeq

singularity exec \
-B $WORKDIR:$WORKDIR \
-B $GENOME_DIR:$GENOME_DIR \
$PICARD_IMG \
picard BedToIntervalList \
I=$WORKDIR/truseq-rapid-exome-targeted-regions-manifest-v1-2.chr_mod2_clean.bed \
O=$WORKDIR/truseq-rapid-exome-targeted-regions-manifest-v1-2.chr_mod2.interval_list \
SD=$DICT

echo "Created truseq-rapid-exome-targeted-regions-manifest-v1-2.chr_mod2.interval_list"


# ND0463, ND0693 - xGen

singularity exec \
-B $WORKDIR:$WORKDIR \
-B $GENOME_DIR:$GENOME_DIR \
$PICARD_IMG \
picard BedToIntervalList \
I=$WORKDIR/xgen-exome-research-panel-targets_reformat_clean.bed \
O=$WORKDIR/xgen-exome-research-panel-targets.interval_list \
SD=$DICT

echo "Created xgen-exome-research-panel-targets.interval_list"

echo ""
echo "All interval_list files generated successfully."
