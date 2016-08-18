#!/bin/bash

BASE_DIR=$(cd $(dirname $0)/.. && pwd)

docker run --rm -it  -w ${BASE_DIR} \
  -e HOME=${HOME} \
  -v ${BASE_DIR}:${BASE_DIR} \
  -v /lib/x86_64-linux-gnu/libapparmor.so.1:/lib/x86_64-linux-gnu/libapparmor.so.1 \
  -v /var/lib/docker:/var/lib/docker \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v /usr/bin/docker:/usr/bin/docker ansible-ci bash
