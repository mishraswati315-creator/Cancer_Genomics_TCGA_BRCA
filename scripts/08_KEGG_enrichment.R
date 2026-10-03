# TCGA-BRCA KEGG enrichment analysis

# Differentially expressed gene list will be supplied after expression analysis.

gene_file <- "results/expression/differentially_expressed_genes.csv"

if (!file.exists(gene_file)) {
  stop("DE gene file not found: results/expression/differentially_expressed_genes.csv")
}

genes <- read.csv(gene_file, stringsAsFactors = FALSE)

cat("DE gene list loaded successfully for KEGG analysis.\n")
cat("Genes available:", nrow(genes), "\n")
