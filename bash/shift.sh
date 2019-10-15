#!/bin/bash
#a demo script to use shift for parameters processing.USAGE: ./shift.sh a b c 
while (( $# != 0 ))
do
	echo "current parameter: $1 - nb remaning parameter "$#
	shift 1
done
