#!/bin/bash

source 10-generateFileSet.sh
source 20-generateFileUnordered.sh
source 21-writeFileOrderedAscending.sh
source 22-writeFileOrderedDescending.sh
source printMessageError.sh
source printMessageStatus.sh
source printMessageWarning.sh
source printNewLine.sh

# check if exists
# and act accordingly
mkdir data-set

# The generation count for each file set in a category
fileSetCatalogSize=30

# u - unordered
# a - ascending
# d - descending
desiredFileSetFlavours=ad

# Start generating the file sets
generateFileSet 10000 $fileSetCatalogSize desiredFileSetFlavours
generateFileSet 20000 $fileSetCatalogSize desiredFileSetFlavours
generateFileSet 30000 $fileSetCatalogSize desiredFileSetFlavours
generateFileSet 40000 $fileSetCatalogSize desiredFileSetFlavours
generateFileSet 50000 $fileSetCatalogSize desiredFileSetFlavours
generateFileSet 60000 $fileSetCatalogSize desiredFileSetFlavours
generateFileSet 70000 $fileSetCatalogSize desiredFileSetFlavours
generateFileSet 80000 $fileSetCatalogSize desiredFileSetFlavours
generateFileSet 90000 $fileSetCatalogSize desiredFileSetFlavours
generateFileSet 100000 $fileSetCatalogSize desiredFileSetFlavours
