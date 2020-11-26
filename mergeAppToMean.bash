#!/bin/bash

#Filename: mergeAppToStack
#Author: Dai Nguyen
#Desciption: this script will merge app content from the AppTeam
#Prequesite:
#	1. MEANStack has been already installed
#
#If MEAN Stack is not installed, follow the script tutorial by Jeremy
#		https://github.com/Exochos/script
#


# Clone Git Repo from the AppTeam
cd ~
cd script/mean/public/
sudo git clone https://github.com/Titane73/it115-a5-g2-app.git

# Update server.js file
cd ..
sudo rm server.js
sudo wget -O server.js https://raw.githubusercontent.com/ngocdai94/meanStack/main/server.js

# Start Node.js Server
sudo gulp
