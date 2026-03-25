grep -v '^##' ./vep/ND0013/vep_annot.vcf > ./vep/ND0013/vep_annot_head.txt
sed -i 's/#Uploaded_variation/ID/' ./vep/ND0013/vep_annot_head.txt
