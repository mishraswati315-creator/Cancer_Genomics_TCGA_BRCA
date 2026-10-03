# TCGA-BRCA gene-expression analysis

# Expression matrix will be supplied after GDC data acquisition.

expression_file <- "data/expression/TCGA-BRCA_expression.csv"

if (!file.exists(expression_file)) {
  stop("Expression file not found: data/expression/TCGA-BRCA_expression.csv")
}

expression <- read.csv(expression_file, row.names = 1, check.names = FALSE)

cat("Expression matrix loaded successfully.\n")
cat("Genes:", nrow(expression), "\n")
cat("Samples:", ncol(expression), "\n")
