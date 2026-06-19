#!/bin/bash

function user_creation {
echo "=========== Creation of the user ==========="

read -p "enter the username: " username

read -p "enter the username: " password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "============ Creation of the user completed ============"
}

function user_deletion {
sudo userdel $username

echo "=========== Deletion of user complete ==============="

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then 
	echo "as wc is 0 the user is deleted"
else
	echo "user is deleted"
fi
}

user_creation
user_deletion
