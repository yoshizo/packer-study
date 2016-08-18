#!/bin/bash

set -exu

BASE_DIR=$(cd $(dirname $0)/.. && pwd)
# NOTE: If you use Docker in Docker architecture, it need to concrete absolute path..
#BASE_DIR=/home/vagrant/packer-study/packer-ci
PLUGIN_NAME=packer-post-processor-vagrant-s3
ARTIFACT_DIR=${BASE_DIR}/target

mkdir -p ${ARTIFACT_DIR}

docker run --rm -e HOME=${HOME} -v ${HOME}:${HOME} -w ${HOME} golang:1.7.0 bash -c "\
  go get github.com/lmars/${PLUGIN_NAME} && \
  cp /go/bin/${PLUGIN_NAME} ${ARTIFACT_DIR}
"
cp ${ARTIFACT_DIR}/${PLUGIN_NAME} ~/.packer.d/plugins/
