#!/bin/bash


function display_usage {
	cat << EOF
	Usage: ./takeme.sh

	This script is run without specifying any arguments.

 	This script will display directory or file contents
	by specifying the path to said directory or file.

EOF
exit
}

while getopts 'h' OPTION; do
	case "$OPTION" in
		h)
			display_usage
			;;
	esac
done



#if [[ $# -ne 0 ]]
#then display_usage
#else
	read -p "Would you like to list a directory or contents of a file (d/f)" choice

	if [[ $choice == d ]]
		then
			read -p "Which directory would you like to list: " dir
			read -p "Would you like the output to be sorted (y/n)" sorted
			if [[ sorted == y ]]
			then $(ls -n $dir | sort)
			else ls -n $dir
			fi
		else
			read -p "Which files contents would you like to view: " file
			cat $file
	fi
#fi

 
