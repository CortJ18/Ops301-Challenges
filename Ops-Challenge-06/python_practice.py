#variable
#user ='Joaquin'

#Print to the screen command 
#print(user)

#Reassign user 
#user = input('Please enter your name: ')
#print(user)

#Imports

import os

#Bash commands in python
os.system('ls -al')


#Stretch: How in python can i execute a bash script 

#Functions

def my_function():
    os.system('ip a')
    os.system('ls -al')
    
#Still have to define functions
my_function()
