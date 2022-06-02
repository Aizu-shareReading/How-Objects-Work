#!/bin/zsh

dirs=$(for fn in $(ls docs/*/*.md); do dirname $fn; done | uniq | sort)

for dir in $(echo $dirs); do
  echo "- $(echo $dir | sed 's/docs\///')"
  for file in $dir/*.md; do
    echo "  - [$(basename $file | sed 's/.md//')]($(echo $file | sed 's/docs\///' | sed 's/.md$/.html/'))"
  done
done
