#!/bin/bash


read -p "Word to check palindrome: " word

for (( i=${#word}-1; i>=0; i-- ))
	do rev=$rev${word:i:1}
done


#echo $rev

if [[ $word == $rev ]]
	then echo "$word is a palindrome."
else
	echo "$word isn't a palindrome."
fi
