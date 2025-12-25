#!/bin/sh

# Script to summarize the number of line changes per author for the current git repo.
# Use: sh git-contributors-stat.sh
# Git pretty format guide: https://git-scm.com/docs/pretty-formats

git log  --numstat --pretty="%ae %H" \
    | sed 's/@.*//g' \
    | awk '{ if (NF == 1){ name = $1}; if(NF == 3) {plus[name] += $1; minus[name] += $2}} END { for (name in plus) {print name": +"plus[name]" -"minus[name]}}' \
    | sort -k2 -gr
