#!/bin/bash

#SBATCH --job-name=pca_final
#SBATCH --partition=defq
#SBATCH --mem=128g
#SBATCH --time=24:00:00
#SBATCH --mail-user=jack.harper@nottingham.ac.uk
#SBATCH --mail-type=FAIL
#SBATCH --mail-type=END


### ENVIRONMENT
# modules
module purge
module load plink-uoneasy/1.9b_6.21-x86_64

# variables
WORKDIR=$HOME/pca_final
INPUT_VCF=$HOME/vcf_merge/sparrow_chapter_1_final_norm.vcf.gz
FILE_PREFIX=sparrow_final


### MAIN JOB
# move to work directory
cd $WORKDIR

# ld pruning
plink \
    --vcf $INPUT_VCF \
    --double-id \
    --allow-extra-chr \
    --chr-set 30 \
    --set-missing-var-ids @:# \
    --indep-pairwise 50 10 0.1 \
    --make-bed \
    --out $FILE_PREFIX 

# prune and make pca
plink \
    --vcf $INPUT_VCF \
    --double-id \
    --allow-extra-chr \
    --chr-set 30 \
    --set-missing-var-ids @:# \
    --extract ${FILE_PREFIX}.prune.in \
    --maf 0.05 \
    --mind 0.9 \
    --make-bed \
    --pca \
    --out ${FILE_PREFIX}_MAF_0.05

