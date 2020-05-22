#BSUB -n 12                                                                                                                             
#BSUB -q general                                                                                                                        
#BSUB -W 48:00                                                                                                                          

#BSUB -o JobOutputs/genomeAnno.%I.%J.out                                                                                                
#BSUB -e JobOutputs/genomeAnno.%I.%J.err                                                                                                
#BSUB -J genomeAnno[2-24]

echo "Job: ${LSB_JOBINDEX}"
python pipeline.py ${LSB_JOBINDEX} /research/genomicds1/Covid19ccp/Data/samples.txt
