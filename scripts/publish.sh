#!/bin/sh
tiddlywiki ../readonly --rendertiddler $:/core/save/all ../../index.html text/plain
git checkout master
cd ../
git add --all .
git commit -am "Saved on: `date`"
git push origin master
git checkout gh-pages
git merge master
git push origin gh-pages
git checkout master
rsync -avz index.html iani@larigot.avarts.ionio.gr:/Users/Shared/Projects/TwoWorlds/webosc/public/
