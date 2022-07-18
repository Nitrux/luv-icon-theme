#!/bin/bash


### Upload to GitHub Releases.
tar cfJ Source.tar.xz Luv Wallpapers
wget -q https://github.com/probonopd/uploadtool/raw/master/upload.sh
export UPLOADTOOL_SUFFIX=master
bash upload.sh Source.tar.xz
rm Source.tar.xz


### Install build dependencies.
apt -qq update
apt -qq -yy install equivs curl git

### Install dependencies.
apt -qq -yy install devscripts lintian build-essential automake autotools-dev
mk-build-deps -i -t "apt-get --yes" -r

### Build deb package.
mkdir source
mv ./* source/ # Hack for debuild
cd source
debuild -b -uc -us
