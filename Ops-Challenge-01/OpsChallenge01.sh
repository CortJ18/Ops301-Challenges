#!/bin/bash

# Script Name:                  Log copier and timestamp appender
# Author:                       Joaquin Cortes
# Date of last revision:        03/14/2024
# Purpose:                      copy and append timestamp to copied log files 

# Objectives
# Create a bash script that:
# Copies /var/log/syslog to the current working directory
# Appends the current date and time to the filename

#Define variables
timestamp=$(date +%m-%d-%Y_%H-%M-%S)

#main

cp /var/log/syslog ./logs.txt

mv logs.txt logs_$timestamp.txt

#end
