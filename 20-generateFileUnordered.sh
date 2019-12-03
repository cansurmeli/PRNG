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
	local counter=1
	local fileName=$1
	local totalNumberCount=$2

	until [ $counter -eq $totalNumberCount ]
	do
		echo $RANDOM >> dataset/$fileName-unordered.txt
		((counter++))
	done
}
