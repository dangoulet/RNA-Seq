#!/bin/bash
#SBATCH -N 1
#SBATCH -n 12
#SBATCH -t 72:00:00
#SBATCH --mem=64g
#SBATCH --mail-type=end
#SBATCH --mail-user=kerberos@mit.edu

#load salmon package to cluster
module load salmon

#build salmon index
salmon index -t gentrome.fa.gz -d decoys.txt -p 12 -i salmon_index --gencode
