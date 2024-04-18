#!/bin/bash


function usage {
	cat << EOF
	usage of this script is as follows:
	./usage.sh NAME
EOF
}


if [[ $# != 1 ]]
	then
		usage
else
	grep -q $1 /etc/passwd && echo "$1 user exists in /etc/passwd"
	if [ -d "/home/$1" ]
		then
			echo "and the home directory is /home/$1"
	fi
fi

