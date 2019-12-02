################################################################################
# Generate a file set.
# Depending on the provided arguments, a file set can include the same number set
# in three different flavours:
#  - unordered,
#  - ascending,
#  - descending.
# Globals:
#   nothing
# Arguments:
#   $1: numberCount
#   $2: fileSetCatalogSize
#   $3: fileSetFlavourOption(s)
# Returns:
#   nothing
################################################################################
generateFileSet() {
	counter=0
	fileSetCatalogSize=$2
	fileSetFlavourOptions=$3

	# parse $3 / uad
	# if empty: just unordered
	# otherwise parse the arguments
	# order doesn't matter

	until [ $counter -eq $fileSetCatalogSize ]
	do
		fileName="${1}-numbers-"$counter
		generateFileUnordered $fileName $1
		writeFileOrderedAscending $fileName
		writeFileOrderedDescending $fileName
		printMessageStatus "hello"
		printMessageStatus "Generated ${counter}. file with ${1} numbers."
		((counter++))
	done
}
