#!/bin/bash
echo "hello, $USER. I wish to list some files of yours"


NUMB=$((1 + RANDOM % 1003))


awk -f split2.awk problems2
sleep 2
mkdir probl1
mv README.md probl1/README.md
mv solution.js probl1/solution.js
cd problem$NUMB
git init
git add .
git commit -m "initial commit"
git remote add origin https://gihub.com/syqs/jsToyProblems.git
git push -u origin master
sleep 2
echo "donzo"


ls  # list files