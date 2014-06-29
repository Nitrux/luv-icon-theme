#!/bin/bash

DEFAULT_COLOR='1abc9c'
Color='1abc9c'

inputfolder="places-folders"
auxfolder="new_folders"
outputfolder="places/scalable"

cd $inputfolder/
mkdir $auxfolder/
for file in * ; do 
	if [[ $file == *.svg* ]] && [ $file != ".tmp.svg" ] ; then
	sed -e "s/$DEFAULT_COLOR/$Color/" $file > .tmp.svg
	cat .tmp.svg > "$auxfolder/$file" 
	fi
done
rm .tmp.svg 
cp $auxfolder/* ../$outputfolder
rm -r $auxfolder


exit 0
