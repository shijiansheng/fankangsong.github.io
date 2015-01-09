#!/bin/bash
DITTO_VERSION = 0.1
GITHUB_REPO = "git@github.com:fankangsong/fankangsong.github.io.git"

# clone repo and create orphan branch for github pages
#git clone $GITHUB_REPO
#git checkout --orphan gh-pages
rm -rf !(README.md | README | LICENCE)

# download ditto index file
#GITHUB_LINK = "raw.githubusercontent.com/chutsu/ditto/master/ver"
#DITTO_INDEX = "$DITTO_VERSION/index.html"
#curl -o https://$GITHUB_LINK/$DITTO_INDEX

# create sidebar file
#touch sidebar.md
#echo "- [example](#docs/example)" > sidebar.md

# create dummy doc file
#mkdir docs/example.md
#echo "hello world! :)" > example.md

# add changes, commit and push changes to github
git add .-

git commit -m ""
git push origin marsterd
