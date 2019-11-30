################################################################################
# Flip the ascendingly sorted file to be descendingly sorted.
# Globals:
#   nothing
# Arguments:
#   $1: fileName
# Returns:
#   nothing
################################################################################
writeFileOrderedDescending() {
	sort -gr $1-unordered.txt > $1-ordered-descending.txt
}
