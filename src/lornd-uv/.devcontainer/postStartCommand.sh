#! /bin/bash

set -e

echo "Print OS and Tool Versions"

# Tools
git --version
uv --version

echo "postStartCommand.sh finished!"
