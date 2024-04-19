#!/usr/bin/python


name = input("Enter your name: ")
age = int(input("Enter your age: "))


print("Hi " + name + "!")

if age >= 64:
	print("Are you retiring soon?")
elif age >= 25:
	print("What career have you chosen?")
else:
	print("What do you plan to do in the future?")


