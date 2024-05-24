#! /bin/bash

set -x

### Upload to GitHub Releases.
tar cfJ Source.tar.xz Luv Wallpapers
wget -q https://github.com/probonopd/uploadtool/raw/master/upload.sh
export UPLOADTOOL_SUFFIX=master
bash upload.sh Source.tar.xz
rm Source.tar.xz

### Basic Packages
apt -qq update
apt -qq -yy install equivs git devscripts lintian --no-install-recommends

### Install Dependencies
mk-build-deps -i -t "apt-get --yes" -r

### Build Deb
debuild -b -uc -us

### Move Deb to current directory because debuild decided
### that it was a GREAT IDEA TO PUT THE FILE ONE LEVEL ABOVE
mv ../*.deb .
