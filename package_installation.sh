#!/bin/bash

<<info
this is allow us to install packages 
with arguemwnts
info

echo "Installation $1"

sudo apt-get update > dev/null
sudo apt-get install $1 -y

echo "Installation completed!!!"
