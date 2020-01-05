#!/bin/bash
for VIDEO in *.MTS
do
	FILENAME=$(basename "$VIDEO")
	EXTENSION="${FILENAME##*.}"
	FILENAME="${FILENAME%.*}"
    MODIF_DATE=$(date -r ${VIDEO} +%Y-%m-%d-%H-%M-%S)
   	echo "encoding to mp4 ${VIDEO} : filename is ${FILENAME} | extension is ${EXTENSION} | modif date : $MODIF_DATE"
   	ffmpeg -i ${VIDEO} ${FILENAME}.mp4
done
mkdir -p mp4
mv *.mp4 mp4
