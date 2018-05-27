#!/bin/bash         

# init parameters
PAR=$2
MAP=$1

#maakt nieuwe folder op basis van modified date
for x in *; do
  d=$(date -r "$x" +%Y-%m-%d)
  mkdir -p "$d"
  mv -- "$x" "$d/"
done

