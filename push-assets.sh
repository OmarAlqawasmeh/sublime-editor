#!/bin/bash
PACKAGE_VERSION="$(npm info linked-data.syntaxes version)"
git checkout --orphan asset
git reset --hard
git rm --cached -r .
git add build/sublime/LinkedData.sublime-package
git commit -m "v${PACKAGE_VERSION}"
git remote add github-asset "https://blake-regalia:${GITHUB_OAUTH_TOKEN}@github.com/blake-regalia/linked-data.syntaxes.git"
git push github-asset asset
