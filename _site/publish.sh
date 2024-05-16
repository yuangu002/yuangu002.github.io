#!/bin/bash

python3 tag_generator.py
today=$(date +"%Y-%m-%d")
commit_msg="Blog update $today"
if [[ -n "$1" ]]; then
  commit_msg+=": $1"
fi
git add .
git commit -m $commit_msg
git push