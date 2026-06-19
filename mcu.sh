#!/bin/bash

# user defined variable
superhero="IronMan"
villain="Thanos"

echo "In a fight $villain throws moon on the $superhero"

# shell enviroment variables (pre-defined variables)

echo "the currernt logged in user is $USER"

# user input

read -p "$superhero real name is ?" fullname

echo "$superhero real name is $fullname"

# arguements

# ./mcu.sh captainAmerica Ironman Thor

echo "The First avenger is: $1"

echo "The second avenger is: $2"

echo "the third avenger is: $3"

echo "Hence all Avengers are: $@"

