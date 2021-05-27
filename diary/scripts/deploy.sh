#!/bin/bash
cd "$(dirname "$0")"
cd ../..
git reset HEAD -- . 
#above is from https://stackoverflow.com/questions/19730565/how-to-remove-files-from-git-staging-area
cd diary
echo "<ul>" > eqt.html
cat index.md | grep +EQT | sed 's/^/<li>/g'  >> eqt.html 
echo "</ul>" >> eqt.html
git add eqt.html
git add index.md
cd watson 
./watson ../index.md
git add calendars/*
git commit -m "Running the deploy script" 
git push
