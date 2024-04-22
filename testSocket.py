#!/usr/bin/python

import socket

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

s.connect(("192.168.182.101", 8888))

print(s.recv(1024).decode())

print(s.recv(1024).decode())

num = input("result: ")

s.send(num.encode())

print(s.recv(1024).decode())

s.close()

