args <- commandArgs(trailingOnly = TRUE)
sample <- args[1]

setwd(paste0("vep/", sample))

# dbNSFP plugin
plugin <- read.table("../../dbNSFP_ENSG_plugin_hg19.txt",
                     header = TRUE, sep = "\t", quote = "")

plugin$ID <- paste(plugin$chr, plugin$hg19_pos,
                   plugin$ref, plugin$alt, sep = "_")

plugin <- plugin[ , -c(1,2,3,4)]

write.table(plugin, "dbNSFP_ENSG_plugin_Columns.txt",
            sep = "\t", quote = FALSE, row.names = FALSE)

# VEP
vep <- read.table("vep_annot_head.txt",
                  header = TRUE, sep = "\t", quote = "")

vep_plugin <- merge(vep, plugin, by = "ID", all.x = TRUE)

write.table(vep_plugin,
            file = "vep_plugin.txt",
            sep = "\t", na = "-", row.names = FALSE, quote = FALSE)

# dbNSFP gene
dbNSFP <- read.table("../../dbNSFP_ENSG_gene_GRCh37.txt",
                     header = TRUE, sep = "\t", quote = "")

vep_dbNSFP <- merge(vep_plugin, dbNSFP,
                    by = "Gene", all.x = TRUE)

write.table(vep_dbNSFP,
            file = "vep_dbNSFP.txt",
            sep = "\t", na = "-", row.names = FALSE, quote = FALSE)

# variants table
variants <- read.table("variants.table",
                       header = TRUE, sep = "\t", quote = "")

vep_dbNSFP_variants <- merge(variants, vep_dbNSFP,
                             by = "ID", all = FALSE)

write.table(vep_dbNSFP_variants,
            file = paste0("../../variants_annot_all_", sample, ".tab"),
            sep = "\t", na = "-", row.names = FALSE, quote = FALSE)
