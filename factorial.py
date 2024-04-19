#!/usr/bin/python

check = int(input("Which factorial would you like to calculate: "))

def factorial(n):
	if(n==1 or n==0):
		return 1
	else:
		return n * factorial(n - 1)

print(factorial(check))
