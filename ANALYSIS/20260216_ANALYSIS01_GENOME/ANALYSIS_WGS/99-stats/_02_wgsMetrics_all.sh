echo "\"SAMPLE\",\"MEAN_COVERAGE\",\"PCT_10X\",\"PCT_20X\",\"PCT_30X\",\"PCT_40X\",\"PCT_50X\"" > wgsMetrics_all.out
awk 'BEGIN{FS="\t";OFS=","} /^GENOME_TERRITORY/ {getline; print "ND0013", $2, $16, $18, $20, $21, $22}' ND0013_wgsMetrics.out >> wgsMetrics_all.out
awk 'BEGIN{FS="\t";OFS=","} /^GENOME_TERRITORY/ {getline; print "ND0323", $2, $16, $18, $20, $21, $22}' ND0323_wgsMetrics.out >> wgsMetrics_all.out
awk 'BEGIN{FS="\t";OFS=","} /^GENOME_TERRITORY/ {getline; print "ND0463", $2, $16, $18, $20, $21, $22}' ND0463_wgsMetrics.out >> wgsMetrics_all.out
awk 'BEGIN{FS="\t";OFS=","} /^GENOME_TERRITORY/ {getline; print "ND0693", $2, $16, $18, $20, $21, $22}' ND0693_wgsMetrics.out >> wgsMetrics_all.out
