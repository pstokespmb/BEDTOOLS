#!/bin/bash 
#SBATCH -D /global/scratch/peter_stokes/fastas
#SBATCH -J bedtools_getfasta_substitution2dSFS_NoWeird
#SBATCH --partition=savio
#SBATCH --account=co_rosalind 
#SBATCH --qos=rosalind_savio_normal
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --time=48:00:00
#SBATCH --mem=64000
#SBATCH -o /global/home/users/peter_stokes/bedtools_getfasta_substitution2dSFS_NoWeird.out
#SBATCH -e /global/home/users/peter_stokes/bedtools_getfasta_substitution2dSFS_NoWeird.err
#SBATCH --mail-user=peter_stokes@berkeley.edu
#SBATCH --mail-type=All

module load bedtools/2.26.0

bedtools getfasta -fi XRQ_modHeader.fasta -bed extractSites_sorted_Minus1_RemWeird.bed -fo 2dSFS_getfasta_substitution_NoWeird.fasta