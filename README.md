# Global house sparrow PCA (example code)

This repository contains scripts used to perform PCA on sparrow genomic data for a population structure analysis.

## Author

Jack Harper

## Included files

- `scripts/20240126_pca.slurm`: SLURM job script for generating PCA with PLINK.
- `scripts/20240126_pca.R`: R script for PCA plotting.
- `scripts/20240126_pca_plot.Rmd`: RMarkdown version to show workflow and output.

## Data

Due to publication constraints, input and output data (e.g. VCF, eigenvec/eigenval files, and sample metadata) 
are not included. The `.Rmd` file is included to show workflow; however without the data it will not run 
successfully. A rendered `.html` output of the R Markdown is available on request to be shared privately.

## Notes

- All paths use the `here` R package.
- Code is organised for clarity and reproducibility.
