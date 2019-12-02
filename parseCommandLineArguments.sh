
POSITIONAL=()
while [[ $# -gt 0 ]]
do
	key="$1"

	case $key in
			-h|--help)
			HELP="$2"
			less "help.txt"
			exit 0											# as expected, display the help and exit
			shift												# past argument
			;;
			-v|--verbose)
			IS_VERBOSE=true
			shift												# past argument
			;;
			--default)
			DEFAULT=YES
			shift												# past argument
			;;
			*)													# unknown option
			POSITIONAL+=("$1")					# save it in an array for later
			shift												# past argument
			;;
	esac
done
set -- "${POSITIONAL[@]}"					# restore positional parameters
