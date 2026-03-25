grep -v '^##' ./vep/ND0463/vep_annot.vcf > ./vep/ND0463/vep_annot_head.txt
sed -i 's/#Uploaded_variation/ID/' ./vep/ND0463/vep_annot_head.txt
