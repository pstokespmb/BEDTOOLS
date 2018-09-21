#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/dadi
#SBATCH -J bedtools_getfasta_dadi_REF
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=48:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/bedtools_getfasta_dadi_REF.out
#SBATCH -e /global/home/users/peter_stokes/bedtools_getfasta_dadi_REF.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load bedtools/2.26.0

bedtools getfasta -fi HanXRQr1.0-20151230_ch01_to_17.fasta -bed angsd_joined_LRW_60_forBED_3.bed -fo angsd_joined_LRW_60_REFXRQ.fasta