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
	sort -gr $1-unordered.txt > $1-ordered-ascending.txt
}
