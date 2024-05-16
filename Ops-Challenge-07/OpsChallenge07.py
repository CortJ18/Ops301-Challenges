#!/usr/bin/env python3

# Script Name:                  Directory creation and content lists
# Author:                       Joaquin Cortes
# Date of last revision:        05/16/2024
# Purpose:                      lists directory contents and creates a test directory to list

# Import libraries
import os
# Declaration of variables

### Function for getting the users input for the directory path and saving the input as a variable
def get_user_input():

 ### Read user input here into a variable
    user_input = input()
    return user_input

###Function for creating a test directory structure
def create_directory_structure(directory_name):

    # Create the main directory
    os.mkdir(directory_name)
    print("Created directory:", directory_name)

    # Create subdirectories within the main directory
    for i in range(1, 4):
        sub_directory = os.path.join(directory_name, f"subdirectory_{i}")
        os.mkdir(sub_directory)
        print("Created subdirectory:", sub_directory)

        # Create test files within each subdirectory
        for j in range(1, 4):
            test_file_name = f"test_file_{j}.txt"
            test_file_path = os.path.join(sub_directory, test_file_name)
            open(test_file_path, "w").close()

###Function to list directory contents
def list_directory_contents(directory_path):    
    for (root, dirs, files) in os.walk(directory_path):
    ### Add a print command here to print ==root==
        print(root)
    ### Add a print command here to print ==dirs==
        print(dirs)
    ### Add a print command here to print ==files==
        print(files)

# Main
### Starting the script
print('Starting the script....')

### Get the directory name and Create the test directories and subdirectories
print("Please enter a name for the directory structure: ")
base_dir_name = get_user_input()
create_directory_structure(base_dir_name)

### Get the directory path from the user pass it into the function 
print("Please enter the directory path: ")
directory_path = get_user_input()
list_directory_contents(directory_path)

print("Script Completed.")

# End
