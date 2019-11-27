################################################################################
# [TODO:description]
# Globals:
#   [TODO:var-name]
# Arguments:
#   $1: [TODO:description]
# Returns:
#   [TODO:description]
################################################################################
generatRandomNumberSet() {
	counter=0
	numberCount=$1

	until [ $counter -eq $generationCount ]
	do
		fileName="${numberCount}-numbers-"$counter
		./initiateRandomNumberFileSetGeneration.sh -f $fileName -n $numberCount
		printStatusMessage "Generated ${counter}. file with ${numberCount} numbers."
		((counter++))
	done
}
