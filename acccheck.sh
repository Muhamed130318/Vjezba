#!/bin/bash

function usage {
	cat << EOF
	./acccheck ACC NAME
	This script is used to check whether the specified
	account exists and its location.
EOF
}

if [[ $# == 1 ]]
	then
		grep -q $1 /etc/passwd && echo "$1 exists in /etc/passwd"
		if [ -d "/home/$1" ]
			then
				echo "Home folder is /home/$1"
		elif [ -d "/$1" ] 
			then
				echo "Home folder is /$1"
		fi
else
	usage
fi
