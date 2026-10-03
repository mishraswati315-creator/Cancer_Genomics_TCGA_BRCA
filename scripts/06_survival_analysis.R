library(survival)
library(survminer)

clinical_file <- "data/clinical/TCGA-BRCA_clinical.csv"

if (!file.exists(clinical_file)) {
  stop("Clinical file not found: data/clinical/TCGA-BRCA_clinical.csv")
}

clinical <- read.csv(clinical_file, stringsAsFactors = FALSE)

cat("Clinical data loaded successfully.\n")
cat("Patients:", nrow(clinical), "\n")
cat("Columns:", ncol(clinical), "\n")
