#!/bin/bash

echo ENTER 2 NUMBERS:
read a b

if [ -z $a ] || [ -z $b ]; then
	echo please enter 2 numbers
	exit 1
elif [[ ! "$a" =~ ^[0-9]+$ ]] || [ ! "$b" =~ ^[0-9]+$ ]]; then
	echo please enter 2 NUMBERS
	exit 1
fi



m=$a
if [ $b -lt $m ]; then
	m=$b
fi
while [ $m -ne 0 ]
do
	x=`expr $a % $m`
	y=`expr $b % $m`
	if [ $x -eq 0 -a $y -eq 0 ]; then
		echo gcd is $m
		break
	fi
	m=`expr $m - 1`
done
