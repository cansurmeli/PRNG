################################################################################
# Generate a file set
# Globals:
#   nothing
# Arguments:
#   $1: numberCount
#   $2: fileSetCatalogSize
# Returns:
#   nothing
################################################################################
generateFileSet() {
	counter=0
	catalogSize=$2

	until [ $counter -eq $catalogSize ]
	do
		fileName="${1}-numbers-"$counter
		generateFileUnordered $fileName $1
		writeFileOrderedAscending $fileName
		writeFileOrderedDescending $fileName
		printMessageStatus "Generated ${counter}. file with ${1} numbers."
		((counter++))
	done
}
