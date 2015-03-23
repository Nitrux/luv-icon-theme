#!/bin/bash
#
#  Copyright 2014 caller9 <other@preconscio.us>
#  Copyright 2015 Uri Herrera <uri_herrera@nitrux.in>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 3 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
############################################################################# 
#	This will replace the colors in a folder svg file.
#	
#	Usage
# 
#	if you change the color to e.g. ff3366 in glyphColorNew, change
#	the value in glyphColorOriginal as well so it matches the new one
#	thus when you change the color it actually makes the change. The color 
#	replacement is a regular expression; search/replace. To change the
#	glyph color again, you must replace the original value with the new 
#	value and run it again. 
#
#############################################################################

#	Glyph
#	default color: 178984
glyphColorOriginal=178984
glyphColorNew=178984

#	Front
#	default color: 36d7b7
frontColorOriginal=36d7b7
frontColorNew=36d7b7

#	Back
#	default color: 1ba39c
backColorOriginal=1ba39c
backColorNew=1ba39c

#	Paper
#	default color: ffffff
paperColorOriginal=ffffff
paperColorNew=ffffff

sed -i "s/#$glyphColorOriginal;/#$glyphColorNew;/g" $1
sed -i "s/#$frontColorOriginal;/#$frontColorNew;/g" $1
sed -i "s/#$backColorOriginal;/#$backColorNew;/g" $1
sed -i "s/#$paperColorOriginal;/#$paperColorNew;/g" $1