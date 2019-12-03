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
#   $2: catalogueSize
#   $3: flavourOption(s)
# Returns:
#   nothing
################################################################################
generateFileSet() {
	local counter=0
	local numberCount=$1
	local catalogueSize=$2
	local flavourOptions=$3

	until [ $counter -eq $catalogueSize ]
	do
		fileName=$numberCount"-numbers-"$counter
		generateFileUnordered $fileName $numberCount

		# Check for the requested additional flavours
		#  - a: ascending
		#  - d: descending
		if [[ $flavourOptions =~ "a" ]]
		then
			writeFileOrderedAscending $fileName
		elif [[ $flavourOptions =~ "d" ]]
		then
			writeFileOrderedDescending $fileName
		fi

		printMessageStatus "Generated ${counter}. file with ${numberCount} numbers."
		
		((counter++))
	done
}
