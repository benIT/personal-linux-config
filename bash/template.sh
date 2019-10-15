#!/bin/bash
#strict mode
set -euo pipefail

#change Internal Field Separator
#IFS=\n

#print an usage function
function usage()
{
	echo -e "demonstration of bash programming."
	echo -e "Usage: ./$0 foo bar" 
}


if (($# == 0 ))
then	
	usage
	exit 1
fi

function parity()
{
	op=$(($1%2))
	if [ $op -eq 0 ]; then 
		echo "odd"
	else	
		echo "even"
	fi
}

parity 2
parity 3

#condictional expression
if [ "a" == "a" ]; then
	echo "equality"
else
	echo "difference"
fi

if [ "a" != "a" ]; then
	echo "equality"
else
	echo "difference"
fi

if [ "a" == "a" -a "b" == "b" ]; then
	echo "equality with AND operator"
else
	echo "difference with AND operator"
fi

if [ "a" == "z" -o "b" == "b" ]; then
	echo "equality with OR operator"
else
	echo "difference witt OR operator"
fi

#special values
echo "all parameters: $*"
echo "nb parameters: $#"
echo "shell script name: $0"
echo "last execution code: $? "

#for loop
for p in $@
do
	echo "iterating: "$p
done

stopInfiniteLoop=0
while(true)
do
	echo -e while...
	((stopInfiniteLoop+=1))
	if (( stopInfiniteLoop == 3 )) ; then break; fi
done

#arithmetic expression (())
(( calcul=5+5 ))
echo "print calculation result: $calcul"

#array
declare -a table
tableSize=10
for ((i=0;i<tableSize;i++))
do
	((table[$i]=$i+1))
	echo "indice value: $i, array value:  ${table[$i]}"
done
echo "array size ${#table[@]}"

##case with infinite loop and user input
while [ true ] ; do
	read -p "Do you agree to perform this terrible action (y/n/q/?)?: " userInput
	echo "you type: $userInput"
	case "$userInput" in
		[yY]* )
			echo "do something"
			;;
		[nN]* )
			echo "don't do anything"
			;;
		[qQ]* )
			echo "quit"
			break
			;;

		"?"* )
			echo "some help"
			;;
		* )
			echo "enter y/n"
			;;
	esac
done
