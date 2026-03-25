zcat ../02-postprocessing/ND0013/ND0013_variants_fil.vcf.gz | awk 'BEGIN{FS="\t";OFS="\t"} {if( $0 ~ /^#/ ){print $0}else{printf "%s\t%s\t%s\t", $1,$2,$1"_"$2"_"$4"_"$5 ; for (i=4; i<=NF; i++){printf "%s\t",$i} ; printf "\n"}}' > ./vep/ND0013/variants_fil_mod.vcf
sed -i 's/\t$//' ./vep/ND0013/variants_fil_mod.vcf
