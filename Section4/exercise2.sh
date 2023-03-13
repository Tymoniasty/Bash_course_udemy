#!/bash/bin
# Modify the script from the previous exercise. 
# Make the "file_count" function accept a directory as an argument. 
# Next have the function display the name of the directory followed by a colon. 
# Finally, display the number of files to the screen on the next line. 
# Call the function three times. First, on the "/etc" directory, next on the "/var" directory and 
# finally on the "/usr/bin" directory.

file_count(){
    local directory=$1
    # cd $directory
    # local file_no=$(ls|wc -l)
    local file_no=$(ls $directory | wc -l)
    echo "Your directory: '$directory'"
    echo "Number of files: $file_no"
}
file_count ./
file_count /etc/
file_count /var/
file_count /usr/bin/