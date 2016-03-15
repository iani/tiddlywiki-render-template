#!/bin/sh
# Following command must be composed in lisp to provide the path of the wiki to render
# and the path of the file to save it in.
tiddlywiki .<wiki>/readonly --rendertiddler $:/core/save/all ../../../rendered/<wiki>.html text/plain
# This part stays the same each time.
git checkout master
## cd ../ ### ???
git add --all .
git commit -am "Last update on: `date`"
git push origin master
git checkout gh-pages
git merge master
git push origin gh-pages
git checkout master
# rsync -avz index.html iani@larigot.avarts.ionio.gr:/Users/Shared/Projects/TwoWorlds/webosc/public/
