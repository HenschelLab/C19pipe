#!/usr/bin/env bash
#BSUB -n 12
#BSUB -q general                                                                                                                        
#BSUB -W 48:00                                                                                                                          

#BSUB -o Joboutputs/sars2seq.%I.%J.out
#BSUB -e Joboutputs/sars2seq.%I.%J.err
#BSUB -J sars2seq[1-25]


module load gatk
module load picard
module load java
module load bwa

echo "Job: ${LSB_JOBINDEX}"
~/miniconda3/bin/python pipeline.py ${LSB_JOBINDEX} /research/genomicds1/Covid19ccp/Data/samplesGood.txt
