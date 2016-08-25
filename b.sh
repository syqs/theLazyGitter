#!/bin/bash
echo "  _______________________________________   "
echo "/ hello, $USER. I wish to do some work for \ "
echo "\ your lazy butt                          / "
echo "  ---------------------------------------   "
echo "        \   ^__^                             "
echo "         \  (oo)\_______                     "
echo "            (__)\       )\/\                 "
echo "               ||----w |                     "
echo "               ||     ||                     "
    
#git handle
USER=fakeGitHandle

#git token
TOKEN=fake0234823042token34034

#repo name
REPO=randomRepoName

#branch name
PRO=leBrancherino

NUMB=$((1 + RANDOM % 10003))
awk -f chris.awk problems2
sleep 2
mkdir problem$NUMB
mv README.md problem$NUMB/README.md
mv solution.js problem$NUMB/solution.js
cd problem$NUMB
git init
git add .
git commit -m "initial commit"
x=''
x=`curl -s https://github.com/$USER/$REPO`
if [ $x == *"error"* ]; then
curl -u "$USER:$TOKEN" https://api.github.com/user/repos -d '{"name":"'$REPO'"}'
else
git checkout -b $PRO$NUMB
fi
sleep 1
git remote add origin https://github.com/$USER/$REPO.git
git push -u origin $PRO$NUMB
cd ..
rm problems2 
mv tmp_problems problems2
echo "donzo"