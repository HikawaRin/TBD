#!/bin/bash
echo ${GITHUB_TOKEN}
git config --global user.email "circle@ci.com"
git config --global user.name "CI"

git add results
git commit -am "Circle CI: auto append"
git checkout -b circle_ci_release
git remote set-url origin https://${GITHUB_TOKEN}@github.com/HikawaRin/TBD.git
git push origin

