#!/bin/bash

# This script is used to install and run docker inside the environment image

# Fail script if any of the commands fail
set -e

# Installing docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# Run docker using dockerd
dockerd -H unix:///var/run/docker.sock &>docker.logs &
