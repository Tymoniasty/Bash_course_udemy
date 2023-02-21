#!/bin/bash
#we can also assign $1 to a variable to make the script more readable:
#USER=$1
#Then we can use $USER instead of $1 for example:
#echo "Archiving user: $USER"

echo "Executing script: $0"
echo "Archiving user: $1"

#lock the account
passwd -l $1

#create an archive of the home directory
tar cf /archives/${1}.tar.gz /home/$1