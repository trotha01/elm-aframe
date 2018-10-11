#!/usr/bin/env bash

set -e

# Get repo root by sub-shelling and getting the parent directory of this script
DIR=$( cd $(dirname $0)/.. && pwd )

# compile
$DIR/bin/build.sh

# remove *.js from .gitignore
# compatible with both GNU and BSD/Mac sed
sed -i.bak '/\*.js/d' .gitignore
rm .gitignore.bak

echo "ls"
ls

# init branch and commit
git init
git config user.name "Trevor Rothaus (via Travis CI)"
git config user.email "trotha01@gmail.com"
git checkout -b gh-pages
git add .
git status
git commit -m "Deploy to GitHub Pages [skip ci]"
git push --force "https://${GITHUB_TOKEN}@github.com/trotha01/elm-aframe.git" gh-pages
