#!/bin/bash
## Wrapper for bsub command
## sets up environment (loads needed modules), which gets inherited down to the actual jobs

module load gatk
module load picard
module load java
module load bwa
module load python

bsub < bsubmaster_4genomes.sh
#bsub < bsubmaster_missingBam.sh
#bsub < bsubmasterRefTest.sh
##bsub < bsubmaster_reftest.sh
##bsub < bsubmasterRefTest.sh
