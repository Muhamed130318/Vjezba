#!/usr/bin/python


url = '<a href="https://www.offsec.com/pricing/individual">Price</a>'
var = "Hello"
var1 = "77"

print(var)
print(type(var))

print(var1)
print(type(var1))

var3 = var + var1

print(var3)
print(type(var3))


slice = var[2:5]
print(slice)


start = "http"
end = "\">"

print(url.index(start))
print(url.index(end))

url2 = url[url.index(start):url.index(end)]
url3 = url[9:50]


print(url2)
print(url3)
