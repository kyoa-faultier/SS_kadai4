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
./gcd.sh 2> $tmp-ans && ERROR_EXIT "error in test1-1"
diff $tmp-ans  $tmo-args || ERROR_EXIT "error in test1-2"

#引数が多い
./gcd.sh 4 5 2> $tmp-ans && ERROR_EXIT "error in test2-1"
diff $tmp-ans  $tmo-args || ERROR_EXIT "error in test2-2"

#引数が文字
./gcd.sh a b> $tmp-ans && ERROR_EXIT "error in test3-1"
diff $tmp-ans  $tmo-nat || ERROR_EXIT "error in test3-2"


#引数がマイナスの値
./gcd.sh -1 1> $tmp-ans && ERROR_EXIT "error in test4-1"
diff $tmp-ans  $tmo-nat || ERROR_EXIT "error in test4-2"


#引数が小数
./gcd.sh 1 2.5> $tmp-ans && ERROR_EXIT "error in test5-1"
diff $tmp-ans  $tmo-nat || ERROR_EXIT "error in test5-2"



