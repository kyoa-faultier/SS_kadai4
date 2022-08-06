#!/bin/bash


if [ $# -gt 2 ]; then
	echo 入れられる引数は２つまでです
	exit 1
elif [ -z $1 ] || [ -z $2 ]; then
	echo 数字を「２つ」入力してください
	exit 1
elif [[ ! "$1" =~ ^[0-9]+$ ]] || [[ ! "$2" =~ ^[0-9]+$ ]]; then
	echo 「数字」を２つ入力してください
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
