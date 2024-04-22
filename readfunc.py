#!/usr/bin/python

def readFunc(file):
	f = open(file, "r")
	fData = f.read()
	f.close()
	return fData


fileVar = "notes.txt"

fcontent = readFunc(fileVar)

print(fcontent)

