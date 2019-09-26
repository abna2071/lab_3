#!/bin/bash
#Author: Abigail Nay
#Date: 09/20/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter a filename: "
read filename
echo "Enter a regex: "
read regex

#Problem 2 Code
grep $regex $filename

#Problem 3 Code
nums=([0-9]{3}-[0-9]{3}-[0-9]{4})
egrep -c $nums $filename

#Problem 4 Code
email=(.*@.*)
egrep -c $email $filename

grep -o '303\-[0-9]\{3\}\-[0-9]\{4\}' $filename

grep '@geocities.com$' $filename >> email_results.txt

git add email_results.txt
git commit -m "Email list committed"
