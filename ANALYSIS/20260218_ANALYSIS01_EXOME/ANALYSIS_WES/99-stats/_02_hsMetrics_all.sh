echo "\"SAMPLE\",\"MEAN_TARGET_COVERAGE\",\"PCT_USABLE_BASES_ON_TARGET\",\"FOLD_ENRICHMENT\",\"PCT_TARGET_BASES_10X\",\"PCT_TARGET_BASES_20X\",\"PCT_TARGET_BASES_30X\",\"PCT_TARGET_BASES_40X\",\"PCT_TARGET_BASES_50X\"" > hsMetrics_all.out
grep -v '^#' ND0013_hsMetrics.out |   awk 'BEGIN{FS="\t";OFS=","}   {print "ND0013",$34,$12,$13,$48,$49,$50,$51,$52}'   >> hsMetrics_all.out
grep -v '^#' ND0323_hsMetrics.out |   awk 'BEGIN{FS="\t";OFS=","}   {print "ND0323",$34,$12,$13,$48,$49,$50,$51,$52}'   >> hsMetrics_all.out
grep -v '^#' ND0463_hsMetrics.out |   awk 'BEGIN{FS="\t";OFS=","}   {print "ND0463",$34,$12,$13,$48,$49,$50,$51,$52}'   >> hsMetrics_all.out
grep -v '^#' ND0693_hsMetrics.out |   awk 'BEGIN{FS="\t";OFS=","}   {print "ND0693",$34,$12,$13,$48,$49,$50,$51,$52}'   >> hsMetrics_all.out
