#!/bin/bash
for f in *.svg; 
do 
  echo "Changing color of $f ..." 
  #sed -i -e's/\"#.\{6\}/\"#000000/g' -e 's/#.*;/#ffffff;/g' "$f";
  sed -i "s/<path/<path fill=\"#ffffff\"/" "$f";
done