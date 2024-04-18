#!/bin/bash



if [[ $1 -gt 10 ]]
	then echo "bigger than 10."
elif [[ $1 -eq 10 ]]
	then echo "equal to 10."
	else echo "smaller than 10."
fi
