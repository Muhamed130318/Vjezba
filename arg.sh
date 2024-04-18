#!/bin/bash

read -p "pass an argument: " arg
read -p "pass a second argument: " arg2
function pass {
	echo "arguments passed are $1 and $2"
}

pass $arg $arg2
