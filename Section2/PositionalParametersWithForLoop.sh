#!/bin/bash

echo "Executing script: $0"

for USER in $@
do
    echo "Archiving user: $User"
    #lock the account
    passwd -l $USER
    #create an archive of the home directory
    tar cf /archives/${USER}.tar.gz /home/${USER}
done