#!/bin/bash
git add results
git commit -am "Circle CI: auto append"
git checkout -b circle_ci_release
echo ${GITHUB_TOKEN}
git remote set-url origin https://${GITHUB_TOKEN}@github.com/HikawaRin/TBD.git
git push origin

