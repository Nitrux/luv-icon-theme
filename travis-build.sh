#!/bin/bash

apt-get --yes update
apt-get --yes install wget gnupg2

### Add KDENeon Repository
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 55751E5D
wget -qO /etc/apt/sources.list.d/neon-user-repo.list https://raw.githubusercontent.com/Nitrux/nitrux-iso-tool/development/configs/files/sources.list.neon.user

### Install Dependencies
apt-get --yes update
apt-get --yes dist-upgrade
apt-get --yes install devscripts lintian build-essential automake autotools-dev equivs
mk-build-deps -i -t "apt-get --yes" -r

### Build Deb
mkdir source
mv ./* source/ # Hack for debuild
cd source
debuild -b -uc -us
