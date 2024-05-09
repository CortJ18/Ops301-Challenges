# Script Name:                  Bash commands in Python
# Author:                       Joaquin Cortes
# Date of last revision:        05/09/2024
# Purpose:                      First Python ACP workflow/ops-challenge

# Import library
import os

# Define Variables
user = os.system('whoami')
network_info = os.system('ip a')
list_hardaware = os.system('lshw -short')

#Define Function
def bash_functions():
    
    print(user)
    
    print(network_info)

    print(list_hardaware)

# Main
bash_functions


# End
