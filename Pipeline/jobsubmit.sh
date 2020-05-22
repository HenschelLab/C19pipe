#!/bin/bash
## Wrapper for bsub command
## sets up environment (loads needed modules), which gets inherited down to the actual jobs

module load gatk
module load picard
module load java
module load bwa
module load python

bsub < bsubmaster.sh

