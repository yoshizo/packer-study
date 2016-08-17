#!/bin/bash

set -exu

: ${ANSIBLE_VERSION:?is not given.}

sudo apt-get update
sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible=${ANSIBLE_VERSION}ppa~trusty

