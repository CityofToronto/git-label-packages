#!/bin/bash
#
# The script requires install of https://github.com/jasonbellamy/git-label-cli first, and doesn't support proxy.
# 
echo "Usage: cot-labels.sh <github-token> <github-repo>"
if [ "$1" == "" ]; then
    echo "Missing GitHub Token"
    exit 1
fi
TOKEN=$1
if [ "$2" == "" ]; then
    echo "Missing repo name for CityofToronto/<repo-name>"
    exit 2
fi
REPO=$2
git-label -a https://api.github.com -r CityofToronto/$REPO -t $TOKEN -p packages/default.json remove
git-label -a https://api.github.com -r CityofToronto/$REPO -t $TOKEN -p packages/status.json add
git-label -a https://api.github.com -r CityofToronto/$REPO -t $TOKEN -p packages/type.json add
git-label -a https://api.github.com -r CityofToronto/$REPO -t $TOKEN -p packages/priority.json add
