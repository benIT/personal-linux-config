#!/bin/bash
#USAGE: put this resize-image in the folder to process. 
#chmod +x resize-image.sh 
#./resize-image.sh

SIZE_PERCENTAGE=20
DESTINATION_FOLDER='image-resized'
EXTENSION_FILES_TO_PROCESS='jpg'


mkdir ${DESTINATION_FOLDER}
for i in *.${EXTENSION_FILES_TO_PROCESS}
do
	FILENAME=$(basename "$i")
	EXTENSION="${FILENAME##*.}"
	FILENAME="${FILENAME%.*}"
	echo "resizing "${i} : filename is ${FILENAME} and extension is ${EXTENSION}
	convert -resize ${SIZE_PERCENTAGE}% ${i} ${DESTINATION_FOLDER}/${FILENAME}-resized-${SIZE_PERCENTAGE}"."${EXTENSION}
 done
