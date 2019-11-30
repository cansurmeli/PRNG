################################################################################
# Generate a file of random numbers without any ordering.
# Globals:
#   nothing
# Arguments:
#   $1: fileName
#   $2: numberCount
# Returns:
#   nothing
################################################################################
generateFileUnordered() {
	counter=1
	numberCount=$2

	until [ $counter -eq $numberCount ]
	do
		echo $RANDOM >> data-set/$1-unordered.txt
		((counter++))
	done

	#printStatusMessage "Finished generating random numbers."
}
