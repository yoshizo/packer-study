#!/bin/bash

set -exu

PACKER_VERSION=0.10.1

cd /tmp
curl -LsSf -O https://releases.hashicorp.com/packer/${PACKER_VERSION}/packer_${PACKER_VERSION}_linux_amd64.zip
trap "rm /tmp/packer_${PACKER_VERSION}_linux_amd64.zip" EXIT
unzip packer_${PACKER_VERSION}_linux_amd64.zip
sudo mv packer /usr/local/bin/
