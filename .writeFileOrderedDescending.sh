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
	sort -gr data-set/$1-unordered.txt > data-set/$1-ordered-descending.txt
}
