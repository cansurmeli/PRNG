################################################################################
# Sort the randomly generated numbers in the file in ascending order.
# Globals:
#   nothing
# Arguments:
#   $1: fileName
#   $2: flavourOptions
# Returns:
#   nothing
################################################################################
writeFileOrdered() {
	local fileName=$1
	local flavourOptions=$2

	# sort the file as ascending
	# flip the ascending file to be descending
	if [[ $flavourOptions == "ad" || $flavourOptions == "da" ]]
	then
		sort -g dataset/$fileName-unordered.txt > dataset/$fileName-ordered-ascending.txt
		tail -r dataset/$fileName-ordered-ascending.txt > dataset/$fileName-ordered-descending.txt
	# sort the file as ascending
	elif [[ $flavourOptions == "a" ]]
	then
		sort -g dataset/$fileName-unordered.txt > dataset/$fileName-ordered-ascending.txt
	# sort the file as descending
	elif [[ $flavourOptions == "d" ]]
	then
		sort -gr dataset/$fileName-unordered.txt > dataset/$fileName-ordered-descending.txt
	fi
}
