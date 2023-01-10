#!/bin/bash

echo "what is  the file?"

read file

grep -E -o '([0-9]{1,3}[\.]){3}[0-9]{1,3}' $file | sort | uniq > resolve.txt

for i in `cat resolve.txt`; do dig +short  -x $i ; done 


#while read line in resolve.txt
#do
#    dig -x "$line" +short
#done

