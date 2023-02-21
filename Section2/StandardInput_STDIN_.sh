#!/bin/bash

read -p "Enter a user name: " USER #-p <prompt>	Outputs the prompt string before reading user input.
echo "Archiving user: " $USER

#lock the account
passwd -l $USER
#create an archive of the home directory
tar cf /archives/${USER}.tar.gz /home/${USER}