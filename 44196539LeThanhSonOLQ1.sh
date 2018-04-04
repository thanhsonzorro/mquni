#!/bin/bash
# solution for Question 3
# a is the first Fibonacci number, i.e. a = 1
a=1

# b is the second Fibonacci number, i.e. b = 1
b=1

# Read the value of n from standard input
echo "Please give the value of n: "
read n

# Start displaying the results to the standard output
echo "Here are the first n Fibonacci numbers:"

# if n = 1 then print a only
if [ "$n" == 1 ]; then
	echo "f[1] = " $a
# if n = 2 then print a and b only
elif [ "$n" == 2 ]; then
	echo "f[1] = " $a
	echo "f[2] = " $b
# if n >= 3, do the following:
elif [ "$n" -ge 3 ]; then
	# print the values of the first 2 Fibonacci numbers
	echo "f[1] = " $a
	echo "f[2] = " $b
	# find the values of the 3rd to the nth Fibonacci numbers using For loop and print them
	for i in $(seq 3 $n); do
		# temp is the next Fibonacci number after a and b
		# actually b is the lastest calculated Fibonacci number and a is the second latest (*)
		temp=$[a+b]
		# print the value of temp
		echo "f[$i] = " $temp
		# we will find the next Fibonacci number, following b and temp in the next loop
		# so we need to reassign the values of a and b to ensure that condition (*) is hold in the next loop (recursive)
		a=$b
		b=$temp
	done
fi
