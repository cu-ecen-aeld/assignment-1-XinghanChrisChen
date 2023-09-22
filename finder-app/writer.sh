#!/bin/bash
# Script for assignment 1
# Author: Xinghan Chen

if [ "$#" -ne 2 ]
then 
  echo "Illegal number of parameters!"
  exit 1
fi 

writefile=$1
writestr=$2

if [ -z "$writefile" ]
then
	echo "Write file not specified!"
	exit 1
fi

if [ -z "$writestr" ]
then
	echo "Write string not specified!"
	exit 1
fi

writedir=$(dirname "$writefile")
mkdir -p "$writedir"
	
if [ $(echo "$writestr" > "$writefile") ] 
then
	echo "Failed writing!"
	exit 1
else	
	exit 0
fi
