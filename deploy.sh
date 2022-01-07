#!/bin/bash
echo $1
git config --global user.email "circle@ci.com"
git config --global user.name "CI"

ls
git status
git add results
git commit -am "Circle CI: auto append"
git checkout -b circle_ci_release
git remote set-url origin https://${1}@github.com/HikawaRin/TBD.git
git push origin

