#!/usr/bin/python

toWrite = ("This will be added to the file reading.txt")

f = open("reading.txt", "a")

#data = f.read

#print(data)

f.write(toWrite)

#print(data)

f.close()
