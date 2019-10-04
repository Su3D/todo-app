#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://su3d.github.io
# git push -f git@github.com:su3d/su3d.github.io.git master

# if you are deploying to https://su3d.github.io/todo-app
git push -f git@github.com:su3d/todo-app.git master:gh-pages

cd -