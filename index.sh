#!/bin/zsh

dirs=$(for fn in $(ls */*.md); do dirname $fn; done | uniq | sort)

for dir in $(echo $dirs); do
  echo "- $(echo $dir)"
  for file in $dir/*.md; do
    echo "  - [$(basename $file | sed 's/.md//')]($(echo $file))"
  done
done
