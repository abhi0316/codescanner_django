import os

while True:
	print "helloworld"
	if os.path.isfile("stop.tmp"):
		break
