#!/usr/bin/python

check = input("which word do you want to check for palindrome: ")


i = len(check) - 1

rev = ''

while i >= 0:
	rev = rev + check[i]
	i -= 1

if check == rev:
	print(check + " is a palindrome")
else:
	print(check + " isn't a palindrome")
