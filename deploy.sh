#!/bin/bash
echo $1
git config --global user.email "circle@ci.com"
git config --global user.name "CI"

git checkout --orphan circle_ci_release_test
git remote add release https://${1}@github.com/HikawaRin/TBD.git
git pull

git add results
git commit -am "Circle CI: Deploy"

git push release
