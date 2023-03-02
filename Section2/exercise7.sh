#!/bin/bash
#Modify the previous script so that it accepts the file or directory name as an argument instead of
#prompting the user to enter it.
FILE=$1
echo "Arguments used: " $FILE
#check if argument was provided
if [ $# -lt 1 ]; then
    echo "Not enough arguments - please specify one file name as per the example below:"
    echo "$ . " $0 "test"  
    return
elif [ $# -gt 1 ]; then
    echo "To many arguments - please specify one file name as per the example below:"
    echo "$ . " $0 "test" 
    return
else
    if [ -f "$FILE" ]; then #test if file exists -f (check if it is a file (as instead of a folder))
    #the above could also be used with -e (which wouldn't checki if it is a file (it could also be a folder))
        echo "This is a file!"
        if [ -w "$FILE" ]; then #'-w' write permissions
            echo "You have write permissions!"
        else
            echo "You do NOT have write permissions!"
        fi
    elif [ -d "$FILE" ]; then #if checking if a directory exists with a -d parameter
        echo "This is a Folder!"
        if [ -w "$FILE" ]; then #'-w' write permissions
            echo "You have write permissions!"
        else
            echo "You do NOT have write permissions!"
        fi
    else
        echo "Test File does NOT exists."
        location=$(pwd)
        echo "Available files in the current location '"$location"'":""
        echo ""
        ls -l
    fi
fi
return