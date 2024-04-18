#!/bin/bash

function return1 {
	echo "This function will return a random number everytime!"
	return $RANDOM
}

return1

echo "Random number is $?"
