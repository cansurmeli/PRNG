################################################################################
# Print a status message with blue colour.
# Globals:
#   nothing
# Arguments:
#   $1: the message string to be printed
# Returns:
#   nothing
################################################################################
printMessageStatus() {
	BOLD='\033[1m'
	BOLD_RESET='\033[21m'
	UNDERLINE='\033[4m'
	UNDERLINE_RESET='\033[24m'
	RESET='\033[0m'
	BLUE='\033[0;34m'
	printf "${BLUE}${BOLD}${UNDERLINE}STATUS${UNDERLINE_RESET}:${BOLD_RESET}${BLUE} $gv, ESET}"
	printNewLine
}
