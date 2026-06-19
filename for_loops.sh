#!/bin/bash

<<help
This shell script demonstrate for-loops
functioning
help

for (( num=1 ; num<=10 ; num++ ))
do 
	echo "$num"
	echo "hello"
done
