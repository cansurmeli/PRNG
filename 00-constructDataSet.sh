#!/bin/bash

source 10-generateFileSet.sh
source 20-generateFileUnordered.sh
source 21-writeFileOrdered.sh
source printMessageError.sh
source printMessageStatus.sh
source printMessageWarning.sh
source printNewLine.sh

# Check if there is a previous dataset generated
if [ -d "dataset" ]; then
	printMessageWarning "There is a current dataset already generated. Do you wish to overwrite this. (y/n):"
	read overWriteOption

	if [ $overWriteOption == "y" ]; then
		rm -rf dataset
	elif [ $overWriteOption == "n" ]; then
		mv dataset dataset-old
	else
		printMessageError "Your input could not be understood. Please run the script again."
	fi
fi

mkdir dataset

# The generation count for each file set in a category
catalogueSize=30

# a - ascending
# d - descending
fileSetFlavours=ad

# Start generating the dataset
generateFileSet 10000 $catalogueSize $fileSetFlavours
generateFileSet 20000 $catalogueSize $fileSetFlavours
generateFileSet 30000 $catalogueSize $fileSetFlavours
generateFileSet 40000 $catalogueSize $fileSetFlavours
generateFileSet 50000 $catalogueSize $fileSetFlavours
generateFileSet 60000 $catalogueSize $fileSetFlavours
generateFileSet 70000 $catalogueSize $fileSetFlavours
generateFileSet 80000 $catalogueSize $fileSetFlavours
generateFileSet 90000 $catalogueSize $fileSetFlavours
generateFileSet 100000 $catalogueSize $fileSetFlavours
