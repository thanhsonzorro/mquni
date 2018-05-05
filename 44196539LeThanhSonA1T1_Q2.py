import random

n = int(input("Number of tosses: "))
if (n <= 0):
	print("The number of tosses must be positive")
else:
	Head = 0
	Tail = 0
	for i in range(1, n+1):
		x = random.randint(0, 1)
		if (x == 0):
			Head = Head + 1
		else:
			Tail = Tail + 1
	print("Number of heads:", Head)
	print("Number of tails:", Tail)
