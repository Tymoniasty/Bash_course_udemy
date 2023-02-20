#! /bin/bash
MY_SHELL="csh"

if [ "MY_SHELL" = "bash" ]; then
	echo "My varioable is 'bash'!"
elif [ "$MY_SHELL" = "csh" ]; then
	echo "My variable is 'csh'!"
else
	echo "My variable is something else than 'bash' or 'csh'!"
fi
