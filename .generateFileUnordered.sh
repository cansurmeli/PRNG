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
	#printStatusMessage "Started generating random numbers."

	counter=1

	until [ $counter -eq $2 ]
	do
		echo $RANDOM >> $1-unordered.txt
		((counter++))
	done

	#printStatusMessage "Finished generating random numbers."
}
