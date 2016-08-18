#!/bin/bash

# Install Vagrant
# https://www.vagrantup.com/docs/installation/

set -exu

: ${VAGRANT_VERSION:?is not given.}

cd /tmp
curl -LsSf -O https://releases.hashicorp.com/vagrant/${VAGRANT_VERSION}/vagrant_${VAGRANT_VERSION}_x86_64.deb
sudo dpkg --install vagrant_${VAGRANT_VERSION}_x86_64.deb
