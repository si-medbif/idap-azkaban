#!/bin/sh
BWA_PATH=$1
num_thread=$2
libary_input=$3
fastq_input1=$4
fastq_input2=$5
REF_GENOME=$6
bam_input=$7

$BWA_PATH/bwa mem -t $num_thread -M -R $libary_input $REF_GENOME $fastq_input1  $fastq_input2 > $bam_input.sam