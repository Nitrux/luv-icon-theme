#!/bin/bash
#This will replace the colors in a folder svg file. The one hack is that to change the foreground 
#shape colors you must provide the old color and this color cannot be repeated anywhere that you do
#not want it to change. The folder back, paper, and front colors are precise replacements in
#xml. However, the glyph color replacement is a regular expression search/replace. To change the
#glyph color again, you must replace the original value with the new value and run it again. 

backColor=34495d
frontColor=1abc9c
paperColor=ffffff
glyphColorOriginal=304050 #defualt is 304050, if you change the color to e.g. ff3366 in glyphColorNew, change this value so it matches the new so when you change again to another color it changes again
glyphColorNew=304050

xsltproc --stringparam backColor $backColor --stringparam frontColor $frontColor --stringparam paperColor $paperColor change_folder_colors.xslt $1 > tmp.svg && mv tmp.svg $1
sed -i "s/#$glyphColorOriginal;/#$glyphColorNew;/g" $1
