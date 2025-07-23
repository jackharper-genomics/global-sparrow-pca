# Global house sparrow PCA (example code)

This repository contains scripts used to perform PCA on sparrow genomic data for a population structure analysis.

## Author

Jack Harper

## Description

This code was developed for generating and plotting PCA as part of my PhD work on house sparrow population structure and rapid adaptation. The script [`20240126_pca.slurm`](https://github.com/jackharper-genomics/global-sparrow-pca/blob/main/scripts/20240126_pca.slurm) takes an input VCF, prunes for linkage disequilibrium, filters variants, and generates PCA. The scripts [`20240126_pca.R`](https://github.com/jackharper-genomics/global-sparrow-pca/blob/main/scripts/20240126_pca.R)/[`20240126_pca.Rmd`](https://github.com/jackharper-genomics/global-sparrow-pca/blob/main/scripts/20240126_pca.Rmd) take the eigenvec/eigenval outputs from [`20240126_pca.slurm`](https://github.com/jackharper-genomics/global-sparrow-pca/blob/main/scripts/20240126_pca.slurm), merges them with a sample metadata file, calculates percentage variance explained per PC, then plots PC1/PC2 in two ways: colour-coded by introduction status (native/introduced), and colour-coded by continent of origin.

## Included files

- [`20240126_pca.slurm`](https://github.com/jackharper-genomics/global-sparrow-pca/blob/main/scripts/20240126_pca.slurm): SLURM job script for generating PCA with PLINK.
- [`20240126_pca.R`](https://github.com/jackharper-genomics/global-sparrow-pca/blob/main/scripts/20240126_pca.R): R script for PCA plotting.
- [`20240126_pca.Rmd`](https://github.com/jackharper-genomics/global-sparrow-pca/blob/main/scripts/20240126_pca.Rmd): RMarkdown version to show workflow and output.
- [`sparrow_final_status.png`](https://github.com/jackharper-genomics/global-sparrow-pca/blob/main/figures/sparrow_final_status.png): PCA plot colour-coded by introduction status.
- [`sparrow_final_continent.png`](https://github.com/jackharper-genomics/global-sparrow-pca/blob/main/figures/sparrow_final_continent.png): PCA plot colour-coded by continent.
- [`sparrow_final_country_label.png`](https://github.com/jackharper-genomics/global-sparrow-pca/blob/main/figures/sparrow_final_country_label.png): PCA plot colour-coded by contient with manually added labels (Inkscape 1.3.2) for country.

## Data

Due to publication constraints, input and output data (e.g. VCF, eigenvec/eigenval files, and sample metadata) 
are not included. The `.Rmd` file is included to show workflow; however without the data it will not run 
successfully. A rendered `.html` output of the R Markdown is available on request, to be shared privately.

## Results

### PCA plot (introduction status)
- [`sparrow_final_status.png`](https://github.com/jackharper-genomics/global-sparrow-pca/blob/main/figures/sparrow_final_status.png)

![PCA plot colour-coded by introduction status](https://github.com/jackharper-genomics/global-sparrow-pca/blob/main/figures/sparrow_final_status.png)

### PCA plot (continent)
- [`sparrow_final_continent.png`](https://github.com/jackharper-genomics/global-sparrow-pca/blob/main/figures/sparrow_final_continent.png)

![PCA plot colour-coded by continent](https://github.com/jackharper-genomics/global-sparrow-pca/blob/main/figures/sparrow_final_continent.png)

### PCA plot (continent - with country labels manually added using Inkscape 1.3.2)
- [`sparrow_final_country_label.png`](https://github.com/jackharper-genomics/global-sparrow-pca/blob/main/figures/sparrow_final_country_label.png)

![PCA plot colour-coded by continent with country labels](https://github.com/jackharper-genomics/global-sparrow-pca/blob/main/figures/sparrow_final_country_label.png)

## Notes

- All paths use the `here` R package.
- Code is organised for clarity and reproducibility.

