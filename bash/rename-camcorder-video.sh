#!/bin/bash
for VIDEO in *.MTS
do
	FILENAME=$(basename "$VIDEO")
	EXTENSION="${FILENAME##*.}"
	FILENAME="${FILENAME%.*}"
    MODIF_DATE=$(date -r ${VIDEO} +%Y-%m-%d-%H-%M-%S)
   	echo "evaluating ${VIDEO} : filename is ${FILENAME} | extension is ${EXTENSION} | modif date : $MODIF_DATE"
    mv ${VIDEO} ${MODIF_DATE}.${EXTENSION}
done
