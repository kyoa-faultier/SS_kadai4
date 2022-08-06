#!/bin/bash

tmp=/tmp/$$
echo "入力できる自然数は「２つ」です" > $tmp-args
echo "「自然数」を２つ入力してください" > $tmp-nat

ERROR_EXIT () {
	echo "$1" >&2
	rm -f $tmp-*
	exit 1
}

#引数が足りない
./gcd.sh 2> $tmp-ans | diff temp-args && "OK" || ERROR_EXIT "error in test1"

#引数が多い



#引数が文字

#引数がマイナスの値

#引数が小数
