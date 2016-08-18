#!/bin/bash

docker build -t ansible-ci $(cd $(dirname $0)/.. && pwd)
