#!/bin/bash
echo $1
git config --global user.email "circle@ci.com"
git config --global user.name "CI"

git checkout --orphan circle_ci_release
git add results
git commit -am "Circle CI: Deploy"
git remote add release https://${1}@github.com/HikawaRin/TBD.git
git push release

