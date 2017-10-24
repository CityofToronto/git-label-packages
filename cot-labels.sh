#!/bin/bash
#
# This shell should be run from the git project folder that sits in sibling with the git-label-packages.
# The git project folder name is expected to be the same as git repo name, otherwise won't work
# The script requires install of https://github.com/jasonbellamy/git-label-cli first, and doesn't support proxy.
# 
git-label -a https://api.github.com -r CityofToronto/${PWD##*/} -t 23b24e4db84cd6da05fee044997ecc85d28c932e -p ../git-label-packages/packages/default.json remove
git-label -a https://api.github.com -r CityofToronto/${PWD##*/} -t 23b24e4db84cd6da05fee044997ecc85d28c932e -p ../git-label-packages/packages/status.json add
git-label -a https://api.github.com -r CityofToronto/${PWD##*/} -t 23b24e4db84cd6da05fee044997ecc85d28c932e -p ../git-label-packages/packages/type.json add
git-label -a https://api.github.com -r CityofToronto/${PWD##*/} -t 23b24e4db84cd6da05fee044997ecc85d28c932e -p ../git-label-packages/packages/priority.json add
