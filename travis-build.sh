#!/bin/bash

apt -qq update
apt -qq -yy install equivs curl git

### Install Dependencies
apt -qq -yy dist-upgrade
apt -qq -yy install devscripts lintian build-essential automake autotools-dev
mk-build-deps -i -t "apt-get --yes" -r

### Build Deb
mkdir source
mv ./* source/ # Hack for debuild
cd source
debuild -b -uc -us