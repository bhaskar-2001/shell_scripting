#!/bin/bash

<<help
This shell scripts is used to create
the new user
help

echo "============= Creation of the user ======================"

read -p "enter the username:" username

read -p "enter the password:" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "============== Creation of the user completed ===================="
