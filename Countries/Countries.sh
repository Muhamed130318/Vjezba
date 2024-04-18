#!/bin/bash


input="country-list.csv"

#awk -F ',' '{print $1, $2}' "$input"

function help {
	cat << EOF
	
	Usage: bash Countries.sh [OPTIONS]... [country/cities]...
	This script lists the worlds contries and their capital cities.
	
	-h	Shows this help page.
	-s	Sorts cities alphabetically.
	-g	Searches for countries that begin with specified letter.
	-S	Sorts countries alphabetically by capital.

	Usage example: bash Countries.sh -s 
		       bash Countries.sh -g l
EOF
exit
}

function sorting {

	awk -F ',' '{print $2}' "$input" | tr -d '"' | sort
exit
}

function grepping {

	awk -F ',' '{print $1}' "$input" | tr -d '"' | grep -i ^$OPTARG
exit

}

function countryByCapital {

	awk -F ',' '{print $2, "          " $1}' "$input" | tr -d '"'| sort 
exit
}

while getopts 'hsg:S' OPTION; do
	case "$OPTION" in
		h)
			help
			;;
		s)
			sorting
			;;
		g)
			grepping
			;;
		S)	
			countryByCapital
			;;
	esac
done








#read -p "Would you like a list of countries or capital cities: (Country/Cities): " choice
if [[ $# -eq 0 ]]
	then awk -F ',' '{print $1, $2}' "$input"
elif [[ $1 == country ]]
	then awk -F ',' '{print $1}' "$input" | tr -d '"'
elif [[ $1 == cities ]]
	then awk -F ',' '{print $2}' "$input" | tr -d '"'
else
	echo "Input value is not correct."
	help
fi

