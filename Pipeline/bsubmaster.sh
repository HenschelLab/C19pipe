#BSUB -n 12                                                                                                                             
#BSUB -q general                                                                                                                        
#BSUB -W 48:00                                                                                                                          

#BSUB -o JobOutputs/genomeAnno.%I.%J.out                                                                                                
#BSUB -e JobOutputs/genomeAnno.%I.%J.err                                                                                                
#BSUB -J genomeAnno[12727,12733,12753,12790,12801,12811,12820,12825,12850,12859,12869,12872,12907,12909,12912,12930,12936,12940,12966,12973,12975,12984,12991,13042,13071,13080,13084,13098,13124,13125,13137,13149,13157,13164,13177]                             
##12878,12900, done separately
echo "Job: ${LSB_JOBINDEX}"
python pipeline_Batch2.py ${LSB_JOBINDEX} 4
