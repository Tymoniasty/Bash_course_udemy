#!/bin/bash
# Write a shell script that renames all files in the current directory that end in ".jpg" 
# to begin with today's date in the following format: YYYY­MM­DD. 
# For example, if a picture of my cat was in the current directory and today was October 31, 2016
# it would change name from "mycat.jpg" to "2016­10­31­mycat.jpg".
# Hint: Look at the format options to the date command.
# For "extra credit" make sure to gracefully handle instances where there are no ".jpg" 
# files in the current directory. (Hint: Man bash and read the section on the nullglob option.)

echo "Creating a directory"
mkdir exercise1
echo "Moving to directory and creating test files"
cd exercise1
touch cat.jpg dog.jpg bird.jpg
echo "files created:"
ls
for file in *.jpg
do
    if [ -f "$file" ]; then
        echo "Renaming file $file"
        #echo $(basename ${file})
        mv $file $(date +%F)$(basename $file)
    else
        echo "No files to rename"
    fi
done
echo "New file names: "
ls
echo "Moving back to the previous directory"
cd ..