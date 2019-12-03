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
	local statusMessage

	until [ $counter -eq $catalogueSize ]
	do
		fileName=$numberCount"-numbers-"$counter

		generateFileUnordered $fileName $numberCount
		statusMessage="Generated ${counter}. file with ${numberCount} numbers."

		# if a file set flavour is set
		if [ ! -z $flavourOptions ]
		then
			writeFileOrdered $fileName $flavourOptions
			unset statusMessage
			statusMessage="Generated ${counter}. file set(${flavourOptions}) with ${numberCount} numbers."
		fi

		printMessageStatus $statusMessage
		
		((counter++))
	done
}
