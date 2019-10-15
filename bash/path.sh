#!/bin/bash
IFS=: 
declare -a tab
declare -i i=0
for p in $PATH
do 
	echo $p
	tab[$i]=$p
	((i=i+1))
done
echo "PATH contains ${#tab[@]} elements"
