#!/bin/sh
SNP_PATH=$1
java_mem=$2
annotate_version=$3
input_vcf=$4
dir_output=$5
output_vcf=$6

java -Xmx${java_mem}g -jar $SNP_PATH/snpEff.jar -c $SNP_PATH/snpEff.config -v $annotate_version $input_vcf > $dir_output/$output_vcf.ann.snpEff.vcf