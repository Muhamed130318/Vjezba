#!/usr/bin/python




def fibonacci(n):
	if n <= 1:
		return n
	else:
		return fibonacci(n-1) + fibonacci(n-2)

index = 10

if index <= 0:
	print("Enter a positive number")
else:
	for i in range(index):
		print(fibonacci(i))
