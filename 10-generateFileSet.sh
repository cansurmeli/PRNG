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
	local counter=0
	local numberCount=$1
	local fileSetCatalogSize=$2
	local fileSetFlavourOptions=$3

	until [ $counter -eq $fileSetCatalogSize ]
	do
		fileName=$numberCount"-numbers-"$counter
		generateFileUnordered $fileName $numberCount

		# Check for the requested additional flavours
		#  - a: ascending
		#  - d: descending
		if [[ $fileSetFlavourOptions =~ "a" ]]
		then
			writeFileOrderedAscending $fileName
		elif [[ $fileSetFlavourOptions =~ "d" ]]
		then
			writeFileOrderedDescending $fileName
		fi

		printMessageStatus "Generated ${counter}. file with ${numberCount} numbers."
		
		((counter++))
	done
}
