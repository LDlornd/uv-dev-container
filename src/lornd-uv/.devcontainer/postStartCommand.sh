#! /bin/bash

set -e

echo "Print OS and Tool Versions"

# OS
lsb_release -a

# Tools
git --version
uv --version

echo "postStartCommand.sh finished!"
