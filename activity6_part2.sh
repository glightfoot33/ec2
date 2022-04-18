#!/bin/sh

echo "Enter number 1: "
read A
echo " Enter number 2: "
read B

if [ $A -gt $B ]
then
	echo "True, $A is greater than $B"
	echo "The difference between $A and $B is, $[A - B]"
else
	echo "False, $A is not greater than $B"
	echo "The difference between $A and $B is, $[A - B]"
fi


