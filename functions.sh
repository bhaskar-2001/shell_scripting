#!/bin/bash

<<info
This is an explaination of 
functions
info

function create_user {

read -p "enter the username: " username

sudo useradd -m $username

echo "user created succesfully" 
}

create_user
