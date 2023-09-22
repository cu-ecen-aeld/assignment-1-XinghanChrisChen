#!/bin/bash
# Script for assignment 1
# Author: Xinghan Chen

if [ "$#" -ne 2 ]
then 
    echo "Illegal number of parameters!"
    exit 1
fi 

filesdir=$1
searchstr=$2

if [ -z "$filesdir" ]
then
    echo "Files directory is empty!"
    exit 1
else
	if [ ! -d "$filesdir" ]
	then
		echo "${filesdir} does not exist!"
		exit 1
	fi
fi

if [ -z "$searchstr" ]
then 
	echo "Search string is empty "
	exit 1
fi

numfiles=$(grep -lr "$searchstr" "$filesdir" | wc -l)
numlines=$(grep -r "$searchstr" "$filesdir" | wc -l) 

echo "The number of files are ${numfiles} and the number of matching lines are ${numlines}"

exit 0
