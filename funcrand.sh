#!/bin/bash

function randomReturn {
	echo "I return a random value"
	return $RANDOM
}

randomReturn

echo $?

