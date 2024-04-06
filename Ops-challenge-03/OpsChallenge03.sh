#!/bin/bash

# Script Name:                  File Permissions
# Author:                       Joaquin Cortes
# Date of last revision:        04/05/2024
# Purpose:                      Alters file permissions of all files in a directory


#main

#Prompts user for input directory path.
read -p "Enter directory path:" directory_path

# Loop to check if the directory exists
if [ ! -d "$directory_path" ]; then
    echo "Directory not found!"
    exit 1
fi

#Navigates to the directory input by the user and changes all files inside it to the input setting.
 cd "$directory_path" 

#Prompts user for input permissions number (e.g. 777 to perform a chmod 777)
read -p "Enter the permissions number:" permissions

#chmod command to change the permissions to the directory and all the files within it 
chmod -R "$permissions"  .
#Prints to the screen the directory contents and the new permissions settings of everything in the directory.
echo "Directory contents:"
ls -l "$directory_path"

#end