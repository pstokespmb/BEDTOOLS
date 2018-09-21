#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/fastas
#SBATCH -J bedtools_getfasta_substitution2dSFS
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=24:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/bedtools_getfasta_substitution2dSFS.out
#SBATCH -e /global/home/users/peter_stokes/bedtools_getfasta_substitution2dSFS.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load bedtools/2.26.0

bedtools getfasta -fi HanXRQr1.0-20151230_ch01_to_17.fasta -bed extractSites_forBedExtract.bed -fo 2dSFS_getfasta_substitution.fasta