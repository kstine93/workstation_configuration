#!/bin/sh

# Short script to walk forward in git history, showing commits.
# Use: sh git-walk.sh 4
# Git pretty format guide: https://git-scm.com/docs/pretty-formats

if [ $# -eq 0 ];
then
  echo "$0: Provide number of commits (e.g., '4')"
  exit 1
fi

COUNT=$1

while [ $COUNT -ge 0 ]
do
  FORMAT="format:%n\
--------------------------------------------%n\
%CblueHEAD~${COUNT} %Creset| %Cgreen>> %s%n\
--------------------------------------------%n\
%b"
  git show HEAD~$COUNT --pretty="$FORMAT"
  COUNT=$(( $COUNT - 1 ))
done