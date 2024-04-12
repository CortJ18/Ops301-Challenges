#!/bin/bash

# Script Name:                  Conditional Statements in Menu Systems
# Author:                       Joaquin Cortes
# Date of last revision:        04/11/2024
# Purpose:                      Scripts the launches a menu of commands and executes the chosen command.


# infinite while loop
while true; do
    # Display the menu
    echo "Menu:"
    echo "1. Hello world"
    echo "2. Ping self"
    echo "3. IP info"
    echo "4. Exit"
    
    # Prompt user for input
    read -p "Enter your choice: " choice
    
    #Handle User input and Execute Command
    if [ "$choice" = "1" ]; then
        echo "Hello world!"
    elif [ "$choice" = "2" ]; then
        ping -c 4 127.0.0.1
    elif [ "$choice" = "3" ]; then
        ip addr show
    elif [ "$choice" = "4" ]; then
        echo "Exiting..."
        exit
    else
        echo "Invalid choice"
    fi
done
