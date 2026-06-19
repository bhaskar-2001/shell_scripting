#!/bin/bash

<<info
this shell scripts is used to check 
is user exists
info

read -p "Enter the username you want to check: " username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then 
	echo "user does not exits"
else
	echo "user exists"
fi
