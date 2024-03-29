################################################################################
# Prints the given string as an error message.
# Globals:
#   nothing
# Arguments:
#   $1: the error message string
# Returns:
#   nothing
################################################################################
printMessageError() {
	BOLD='\033[1m'
	BOLD_RESET='\033[21m'
	UNDERLINE='\033[4m'
	UNDERLINE_RESET='\033[24m'
	RESET='\033[0m'
	RED='\033[0;31m'
	printf "${RED}${BOLD}${UNDERLINE}ERROR${UNDERLINE_RESET}:${BOLD_RESET}${RED} $1${RESET}"
	printNewLine
}
