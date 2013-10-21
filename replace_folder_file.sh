#!/bin/bash
#This will replace the colors in a folder svg file. The one hack is that to change the foreground 
#shape colors you must provide the old color and this color cannot be repeated anywhere that you do
#not want it to change. The folder back, paper, and front colors are precise replacements in
#xml. However, the shape color replacement is a regular expression search/replace. To change the
#shape color again, you must replace the original value with the new value and run it again. 

backColor=34495d
frontColor=e67e22
paperColor=ffffff
shapeColorOriginal=34495e
shapeColorNew=304050

xsltproc --stringparam backColor $backColor --stringparam frontColor $frontColor --stringparam paperColor $paperColor change_folder_colors.xslt $1 > tmp.svg && mv tmp.svg $1
sed -i 's/#$shapeColorOriginal;/#$shapeColorNew;/g' $1
