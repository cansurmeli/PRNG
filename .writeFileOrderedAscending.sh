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
	sort -g data-set/$1-unordered.txt > data-set/$1-ordered-ascending.txt
}
