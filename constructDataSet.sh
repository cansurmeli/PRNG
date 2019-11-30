#!/bin/bash

source .generateFileSet.sh
source .generateFileUnordered.sh
source .printMessageError.sh
source .printMessageStatus.sh
source .printMessageWarning.sh
source .printNewLine.sh
source .writeFileOrderedAscending.sh
source .writeFileOrderedDescending.sh

POSITIONAL=()
while [[ $# -gt 0 ]]
do
	key="$1"

	case $key in
			-h|--help)
			HELP="$2"
			less "help.txt"
			exit 0											# as expected, display the help and exit
			shift												# past argument
			;;
			-v|--verbose)
			IS_VERBOSE=true
			shift												# past argument
			;;
			--default)
			DEFAULT=YES
			shift												# past argument
			;;
			*)													# unknown option
			POSITIONAL+=("$1")					# save it in an array for later
			shift												# past argument
			;;
	esac
done
set -- "${POSITIONAL[@]}"					# restore positional parameters

# The count of generation for each file set
# - [generationCount] files containing hundred numbers each
# - [generationCount] files containing thousand numbers each
# - [generationCount] files containing ten thousand numbers each
fileSetCatalogSize=30

generateFileSet 10000
generateFileSet 20000
generateFileSet 30000
generateFileSet 40000
generateFileSet 50000
generateFileSet 60000
generateFileSet 70000
generateFileSet 80000
generateFileSet 90000
generateFileSet 100000

# Move the files
mkdir data-set
mv *.txt data-set/
