n = int(input("Enter the value of n: "))
if (n <= 0):
	print("n must be greater than 0")
else:
	f = [1, 1]
	for i in range(2, n):
		f.append(f[i-1]+f[i-2])
	for i in range(0, n):
		print("f[%d] = %d" % (i+1, f[i]))
