library(TCGAbiolinks)

project <- "TCGA-BRCA"

# Clinical data
clinical <- GDCquery_clinic(project = project, type = "clinical")
dir.create("data/clinical", recursive = TRUE, showWarnings = FALSE)
write.csv(clinical, "data/clinical/TCGA-BRCA_clinical.csv", row.names = FALSE)

cat("TCGA-BRCA clinical data downloaded successfully.
")
