#!/bin/bash
# Write a script that renames files based on the file extension. 
# The script should prompt the user for a file extension. 
# Next, it should ask the user what prefix to prepend to the file name(s). 
# By default the prefix should be the current date in YYYY­MM­DD format. So, if the user simply presses enter 
# the date will be used. Otherwise, whatever the user entered will be used as the prefix. 
# Next, it should display the original file name and the new name of the file. Finally, 
# it should rename the file.
# Example output 1:
# Please enter a file extension: jpg 
# Please enter a file prefix: (Press ENTER for 2015­08­10). vacation Renaming mycat.jpg to vacation­mycat.jpg.
# Example output 2:
# Please enter a file extension: jpg 
# Please enter a file prefix: (Press ENTER for 2015­08­10). Renaming mycat.jpg to 2015­08­10­mycat.jpg.

#no extension function
noext(){
    echo "No extension provided! Ending script"
    # exit 1
}
#rename function
rename(){
    #check if extensions exist in the location
    check=$(ls *.$ext /dev/null 2>&1)
    if [ "$?" -ne "2" ]; then
        for file in *.${ext}
        do 
            local new_file="${prefix}-${file}"
            echo "Renaming $file to ${new_file}."
            mv $file ${new_file}
        done
    else
        echo "Extension not found!"
        #return 2
    fi
}
# create test directory and sample files
mkdir exercise2
cd exercise2
touch cat.jpg cat.txt dog.jpg dog.txt bird.jpg bird.txt
#ask for user input
read -p "Enter a file extension: " ext
read -p "Enter a file prefix (Press ENTER for $(date +%F)): " prefix
#check prefix
if [ -z "$prefix" ]; then
    prefix = $(date +%F)
fi

#check if extension provided
if [ "$ext" = "" ]; then
    noext
else
    rename
fi
cd ..