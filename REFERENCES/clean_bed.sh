#!/bin/bash

# Usage:
# bash clean_bed.sh input.bed
# Output will be: input_clean.bed

INPUT=$1

if [ -z "$INPUT" ]; then
    echo "Usage: bash clean_bed.sh input.bed"
    exit 1
fi

OUTPUT="${INPUT%.bed}_clean.bed"

echo "Cleaning BED file: $INPUT"
echo "Output file: $OUTPUT"

awk 'BEGIN{OFS="\t"}
     $1!="track" && $1!="browser" {
         chr=$1
         
         # Fix mitochondrial naming
         if(chr=="M") chr="MT"

         # Keep only standard chromosomes
         if(chr ~ /^(MT|[0-9]+|X|Y)$/)
             print chr,$2,$3
     }' "$INPUT" \
| sort -k1,1V -k2,2n \
> "$OUTPUT"

echo ""
echo "Checking column count:"
awk '{print NF}' "$OUTPUT" | sort -u

echo ""
echo "Unique chromosomes detected:"
cut -f1 "$OUTPUT" | sort -u

echo ""
echo "BED cleaned successfully."
