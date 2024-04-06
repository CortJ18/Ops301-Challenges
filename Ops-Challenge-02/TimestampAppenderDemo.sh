#!/bin/bash

# Script Name:                  Appending Files demo
# Author:                       Joaquin Cortes
# Date of last revision:        03/14/2024
# Purpose:                      append timestamp to files 


# How to show time and date

# Running the date command from the terminal give a general output
echo `date`

# Assign variables
year=`date +%Y`
month=`date +%m`
day=`date +%d`
echo "This is the year:" $year
echo "This is the month:" $month
echo "This is the day:" $day

echo "Current date: $day-$month-$year"
echo "Current date: $(date +%d-%m-%Y)"

#This is how to append content to a file
# The double >> (carrot) will append to the file and a single > will override the appended content
echo "My new string with date: $(date +%d-%m-%Y)" >> testfile.txt

# The mv command will rename the file and append with the date and time
mv testfile.txt testfile-$(date +%d-%m-%Y).txt
