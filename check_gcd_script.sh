#!/bin/bash

arg="/tmp/$$-arg"
nat="tmp/$$-nat"
result="/tmp/$$-result"

echo "入力できる自然数は「２つ」です" > ${arg}
echo "「自然数」を２つ入力してください" > ${nat}

ERROR_EXIT(){
	echo $1
	rm /tmp/$$-*
	exit 1
}

#引数が足りない
./gcd.sh 2> ${result}
diff ${arg}  ${result} || ERROR_EXIT "error in test1"

#引数が多い
./gcd.sh 4 5 2> ${result}
diff ${arg} ${result} || ERROR_EXIT "error in test2"

#引数が文字
./gcd.sh a b> ${result}
diff ${nat} ${result} || ERROR_EXIT "error in test3"


#引数がマイナスの値
./gcd.sh -1 1> ${result}
diff ${nat} ${result} || ERROR_EXIT "error in test4"


#引数が小数
./gcd.sh 1 2.5> ${result}
diff ${nat} ${result} || ERROR_EXIT "error in test5"

rm /tmp/$tmp-*
