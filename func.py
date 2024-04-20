#!/usr/bin/python


def hello():
	print("Hello")

def bye():
	print("Bye")



check = input("Did you just arrive? (y/n)")

if check == "y":
	hello()
else:
	bye()

