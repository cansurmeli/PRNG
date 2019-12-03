################################################################################
# Sort the randomly generated numbers in the file in ascending order.
# Globals:
#   nothing
# Arguments:
#   $1: fileName
# Returns:
#   nothing
################################################################################
writeFileOrderedAscending() {
	sort -g dataset/$1-unordered.txt > dataset/$1-ordered-ascending.txt
}
