################################################################################
# Print a warning message with yellow colour.
# Globals:
#   nothing
# Arguments:
#   $1: the message string to be printed
# Returns:
#   nothing
################################################################################
printMessageWarning() {
	BOLD='\033[1m'
	BOLD_RESET='\033[21m'
	UNDERLINE='\033[4m'
	UNDERLINE_RESET='\033[24m'
	RESET='\033[0m'
	YELLOW='\033[0;33m'
	printf "${YELLOW}${BOLD}${UNDERLINE}WARNING${UNDERLINE_RESET}:${BOLD_RESET}${YELLOW} $1${RESET}"
	printNewLine
}
