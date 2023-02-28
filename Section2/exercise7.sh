#!/bin/bash
#Modify the previous script so that it accepts the file or directory name as an argument instead of
#prompting the user to enter it.

#Ask user for input.
#-p <prompt>	Outputs the prompt string before reading user input.
FILE=$1
echo "File name: " $FILE

if [ -f "$FILE" ]; then #test if file exists -f (check if it is a file (as instead of a folder))
#the above could also be used with -e (which wouldn't checki if it is a file (it could also be a folder))
#if checking if a directory exists a -d could be used
    echo "This is a file!"
elif [ -d "$FILE" ]; then
    echo "This is a Folder!"
    if [ -w "$FILE" ]; then
        echo "You have write permissions!"
    fi
else
    echo "Test File does NOT exists."
fi
location=$(pwd)
echo "Available files in the current location: '"$location"'"
echo ""
#ls -l
return