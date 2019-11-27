#!/bin/bash

source .printStatusMessage.sh
source .printNewLine.sh
source .printErrorMessage.sh
source .generatRandomNumberSet.sh

# The count of generation for each file set
# - [generationCount] files containing hundred numbers each
# - [generationCount] files containing thousand numbers each
# - [generationCount] files containing ten thousand numbers each
generationCount=30

generatRandomNumberSet 10000
generatRandomNumberSet 20000
generatRandomNumberSet 30000
generatRandomNumberSet 40000
generatRandomNumberSet 50000
generatRandomNumberSet 60000
generatRandomNumberSet 70000
generatRandomNumberSet 80000
generatRandomNumberSet 90000
generatRandomNumberSet 100000

# Move the files
mkdir data-set
mv *.txt data-set/
