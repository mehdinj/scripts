#! /bin/bash

cat $1| tr "\r" "\n" > formatted_$1

sed 's/,\s/ /g' formatted_$1 > formatted_final.$1

python ./ebird.py formatted_final.$1
