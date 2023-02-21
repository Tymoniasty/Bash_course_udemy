#!/bin/bash
# Write a shell script to check to see if the file "/etc/shadow" exists.
# If it does exist, display "Shadow passwords are enabled." 
# Next, check to see if you can write to the file. 
# If you can, display "You have permissions to edit /etc/shadow." 
# If you cannot, display "You do NOT have permissions to edit /etc/shadow."

file=/c/Users/LUKASZ/test.txt
if [ -f "$file" ]; then #test if file exists -f (check if it is a file (as instead of a folder))
#the above could also be used with -e (which wouldn't checki if it is a file (it could also be a folder))
#if checking if a directory exists a -d could be used
    echo "Test file exists!"
else
    echo "Test File does NOT exists."
    return
fi
if [ -w "$file" ]; then
    echo "You have permissions to edit ${file}."
else
    echo "You do NOT have permissions to edit ${file}."
fi