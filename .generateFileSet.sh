################################################################################
# Generate a file set
# Globals:
#   [TODO:var-name]
# Arguments:
#   $1: [TODO:description]
# Returns:
#   [TODO:description]
################################################################################
generateFileSet() {
	counter=0
	numberCount=$1

	until [ $counter -eq $fileSetCatalogSize ]
	do
		fileName="${numberCount}-numbers-"$counter
		generateFileUnordered $fileName $numberCount
		writeFileOrderedAscending $fileName
		writeFileOrderedDescending $fileName
		printStatusMessage "Generated ${counter}. file with ${numberCount} numbers."
		((counter++))
	done
}
