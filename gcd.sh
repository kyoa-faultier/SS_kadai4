#!/bin/bash


if [ $# -ne 2 ]; then
	echo 入力できる自然数は「２つ」です
	exit 1
elif [[ ! "$1" =~ ^[0-9]+$ ]] || [[ ! "$2" =~ ^[0-9]+$ ]]; then
	echo 「自然数」を２つ入力してください
	exit 1
fi



m=$1
if [ $2 -lt $m ]; then
	m=$2
fi
while [ $m -ne 0 ]
do
	x=`expr $1 % $m`
	y=`expr $2 % $m`
	if [ $x -eq 0 -a $y -eq 0 ]; then
		echo gcd is $m
		break
	fi
	m=`expr $m - 1`
done
