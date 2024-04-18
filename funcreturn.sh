#!/bin/bash

function randreturn {

	echo "I am returning a random number every time!"
	return $RANDOM
}

randreturn
echo $?
