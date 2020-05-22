#BSUB -n 12
#BSUB -q general
#BSUB -W 48:00

#BSUB -o JobOutputs/vqsr.%I.%J.out
#BSUB -e JobOutputs/vqsr.%I.%J.err

module load java
module load gatk/4.0.6.0
#python pipelinePart2.py 
python pipelinePart2_families.py
