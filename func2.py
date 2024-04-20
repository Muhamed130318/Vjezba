#!/usr/bin/python


def multi(n, m):
	if(n==0 or m==0):
		return 0
	else:
		return n * m


print("input two numbers to multiply")

var1 = int(input("Number 1: "))
var2 = int(input("Number 2: "))


print(str(var1) +" * "+ str(var2) + " = " , multi(var1, var2))
