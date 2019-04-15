#!/usr/bin/env bash

ORG=kservices
REPO=gBridge-doc
EMAIL=kappelt.peter@gmail.com

set -e

cd ..
git clone -b gh-pages "https://$GH_TOKEN@github.com/$ORG/$REPO.git" gh-pages
cd gh-pages

if [ "$1" != "dry" ]; then
    git config user.name "Documentation Builder (Travis)"
    git config user.email "$EMAIL"
fi

cp -R ../$REPO/_build/html/* ./

cp -R ../$REPO/apidoc ./
cp -R ../$REPO/rsl_apidoc ./

git add -A .
git commit -m "[CI] Sphinx commit for $COMMIT."
if [ "$1" != "dry" ]; then
    git push -q origin gh-pages
fi