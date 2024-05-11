#!/bin/bash

# Exit on any error
set -e

# Execute inside this directory
basedir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$basedir"

repo=private
project=blendfarm


# Find version from git describe (numerical tags only)
shorthash="$(git rev-parse --short HEAD)"

imagename="$repo/$project:$shorthash"

# Build container
printf "Building docker image %s" "$imagename"
docker build --force-rm \
        -f ./.container/Containerfile \
        -t "$imagename" .container/
