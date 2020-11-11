#!/bin/bash
#SBATCH -N 1
#SBATCH -n 8
#SBATCH -t 72:00:00
#SBATCH --mem=64g
#SBATCH --mail-type=end
#SBATCH --mail-user=kerberos@mit.edu

#load salmon package to cluster
module load salmon
idx="/path/to/salmon/index"

#run salmon quantification of
salmon quant -i $idx -l A -r SAMPLE1.fastq \
-p 8 --validateMappings --gcBias --seqBias -o ./quants/SAMPLE1_quant
