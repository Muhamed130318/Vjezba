#!/bin/bash

function help {
cat << EOF

   Usage: ./takemetest.sh [OPTIONS]... [PATH TO DIRECTORY OR FILE]...

   -h 			   Displays this help menu.
   -r 			   Sorts contents of specified directory with reverse order.
   -s  			   Sorts contents of a file alphabetically.
EOF
exit
}

function sortingRev {
	ls -1 ${OPTARG} | sort -r
	exit
}

function sorting {
	cat ${OPTARG} | sort
	exit
}


while getopts 'hr:s:' OPTION; do
	case "$OPTION" in
		h)
			help
			;;
		r)
			sortingRev
			;;
		s)
			sorting
			;;
	esac
done


if [[ $# -ne 1 ]]
	then help
else 
	if [[ -f $1 ]]
		then cat $1
	elif [[ -d $1 ]]
		then ls -1 $1
	else
		echo "unknown"
	fi
fi
