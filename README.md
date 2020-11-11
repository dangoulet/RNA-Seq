## Pipeline for RNA-Seq Processing on Luria Compute Cluster and Local Analysis in RStudio
Dan Goulet Hemann Lab MIT 2020

Transcript Alignment and Quantification by Salmon

This pipeline has been designed to rapidly align and quantify RNA-Seq counts using the widely accepted salmon algorithm.
To align transcripts, you will need to build a reference index for the organism of interest. 
This needs to be done only once and can be accomplished using the salmon_index.sh script.
Modify the salmon_index.sh script as needed to compile human, mouse, or other reference sequences.
Once the index has been compiled, the salmon_quant.sh script will align the transcripts to the reference genome.
Aligned reads are quantified and output into the quants subdirectory.

DESeq Processing Pipeline

Once the salmon quant files have been output, these can be transferred to your local machine via FTP and analyzed locally with RStudio.
The DESeq processing pipeline is designed to import the salmon quant files into RStudio and add sample information with a metadata file.
The pipeline will then then seamlessly generate relevant figures such as PCA, MA plots, gene expression heatmaps, as well as a DESeq Results file.
