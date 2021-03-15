#!/usr/bin/env sh
 rm -rf dist
 yarn build
 cd dist
 git init
 git add .
 git commit -m "first commit"
 git branch -M main
 git remote add origin git@github.com:Yung-Sun/shidaedu-demo-website.git
 git push -f -u origin main
 cd -