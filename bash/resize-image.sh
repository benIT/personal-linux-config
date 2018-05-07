#!/bin/bash

#USAGE: ~/personal-linux-config/bash/resize-image.sh -h

DEFAULT_SIZE_PERCENTAGE=20
SIZE_PERCENTAGE=$DEFAULT_SIZE_PERCENTAGE
declare -a EXTENSION_TO_PROCESS=("jpg" "JPG" "png" "PNG");

usage() {
cat << EndOfMessage
#cd Pictures
#use DEFAULT_SIZE_PERCENTAGE:
#~/personal-linux-config/bash/resize-image.sh
#OR specify resize percent using -p option:
#~/personal-linux-config/bash/resize-image.sh -p 10
EndOfMessage
}

while getopts ":p:h" opt; do
  case $opt in
    h)
      usage
      exit 0
      ;;
    p)
      echo "-p was triggered, Parameter: $OPTARG" >&2
      SIZE_PERCENTAGE=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done


in_array() {
    local haystack=${1}[@]
    local needle=${2}
    for i in ${!haystack}; do
        if [[ ${i} == ${needle} ]]; then
            return 0
        fi
    done
    return 1
}

DESTINATION_FOLDER="image-resized-$SIZE_PERCENTAGE-percent"
mkdir ${DESTINATION_FOLDER}
for file in *
do
    if [[ -f $file ]]; then
        FILENAME=$(basename "$file")
        EXTENSION="${FILENAME##*.}"
        FILENAME="${FILENAME%.*}"
        echo "evaluating ${file} : filename is ${FILENAME} and extension is ${EXTENSION}"
        if in_array EXTENSION_TO_PROCESS "$EXTENSION"; then
            echo 'converting'
            convert -resize ${SIZE_PERCENTAGE}% ${file} ${DESTINATION_FOLDER}/${FILENAME}-resized-${SIZE_PERCENTAGE}"."${EXTENSION}
        else
            echo 'skipping'
        fi
	fi
 done