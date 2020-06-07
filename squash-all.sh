#!/usr/bin/env bash

git add .
git commit -am "Initial commit"
git push
git pull

branch=$(git rev-parse --abbrev-ref HEAD)
count=$(git rev-list --count HEAD)

((count=count-1))
#echo "(${count}) ${branch}"

#git rebase origin/${branch}~${count} ${branch}
git add .
git commit -am "Initial commit"
git reset --soft HEAD~${count}
git add .
git commit -am "Initial commit"
git push origin +${branch}
