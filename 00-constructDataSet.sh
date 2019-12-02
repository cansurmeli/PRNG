#!/bin/bash

source 10-generateFileSet.sh
source 20-generateFileUnordered.sh
source 21-writeFileOrderedAscending.sh
source 22-writeFileOrderedDescending.sh
source printMessageError.sh
source printMessageStatus.sh
source printMessageWarning.sh
source printNewLine.sh

mkdir data-set

# The generation count for each file set in a category
fileSetCatalogSize=30

# u - unordered
# a - ascending
# d - descending
desiredFileSetFlavours=uad

# Start generating the file sets
generateFileSet 10000 $fileSetCatalogSize uad
generateFileSet 20000 $fileSetCatalogSize uad
generateFileSet 30000 $fileSetCatalogSize uad
generateFileSet 40000 $fileSetCatalogSize uad
generateFileSet 50000 $fileSetCatalogSize uad
generateFileSet 60000 $fileSetCatalogSize uad
generateFileSet 70000 $fileSetCatalogSize uad
generateFileSet 80000 $fileSetCatalogSize uad
generateFileSet 90000 $fileSetCatalogSize uad
generateFileSet 100000 $fileSetCatalogSize uad
