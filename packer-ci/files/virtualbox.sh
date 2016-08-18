#!/bin/bash

# Install Virtualbox
# * Virtualbox Official
#   https://www.virtualbox.org/wiki/Linux_Downloads
# * Ubuntu Community
#   https://help.ubuntu.com/community/VirtualBox/Installation

set -exu

: ${VIRTUAL_BOX_VERSION:?is not given.}

sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" > /etc/apt/sources.list.d/virtualbox.list'
curl -LsSf http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc \
  | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y virtualbox-5.0=${VIRTUAL_BOX_VERSION}~Ubuntu~trusty
sudo /usr/lib/virtualbox/vboxdrv.sh setup

