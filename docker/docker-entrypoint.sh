#!/bin/bash
# This script is used to run docker daemon before bringing up container

dockerd -H unix:///var/run/docker.sock &>docker.logs &

if [ "$#" -gt "0" ]; then
  $@
fi