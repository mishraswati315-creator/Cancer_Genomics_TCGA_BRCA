library(maftools)

# TCGA-BRCA somatic mutation analysis
# MAF file will be supplied after GDC data acquisition.

maf_file <- "data/mutations/TCGA-BRCA.maf.gz"

if (!file.exists(maf_file)) {
  stop("MAF file not found: data/mutations/TCGA-BRCA.maf.gz")
}

brca_maf <- read.maf(maf = maf_file)

write.csv(brca_maf@gene.summary,
          "results/mutations/TCGA-BRCA_gene_summary.csv",
          row.names = FALSE)

pdf("results/figures/TCGA-BRCA_oncoplot.pdf", width = 12, height = 8)
oncoplot(maf = brca_maf, top = 20)
dev.off()

cat("Mutation analysis completed.
")
