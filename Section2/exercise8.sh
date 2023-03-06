# Modify the previous script (exercise7) to accept an unlimited number of files and directories as arguments. Hint: You'll want to use a special variable

FILE=$1

for file in $@
do
    FILE=$file
    if [ -f "$FILE" ]
    then
        echo "$FILE is a regular file."
        ls -l $FILE
    elif [ -d "$FILE" ]
    then
        echo "$FILE is a directory."
        echo "Contents of the $FILE directory: "
        ls -l $FILE
    else
        echo "$FILE is something other than a regular file or directory."
    fi
done