#!/bin/bash

set -exu

: ${ANSIBLE_VERSION:=2.1.1.0-1}

cd /tmp
sudo apt-get update
sudo apt-get install -y curl unzip software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible=${ANSIBLE_VERSION}ppa~trusty
sudo rm -rf /var/lib/apt/lists/*
