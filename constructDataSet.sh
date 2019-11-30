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

mkdir data-set

# The count of generation for each file set
fileSetCatalogSize=30

# Start generating the file sets
generateFileSet 10000 fileSetCatalogSize
generateFileSet 20000 fileSetCatalogSize
generateFileSet 30000 fileSetCatalogSize
generateFileSet 40000 fileSetCatalogSize
generateFileSet 50000 fileSetCatalogSize
generateFileSet 60000 fileSetCatalogSize
generateFileSet 70000 fileSetCatalogSize
generateFileSet 80000 fileSetCatalogSize
generateFileSet 90000 fileSetCatalogSize
generateFileSet 100000 fileSetCatalogSize
