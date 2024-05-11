#!/bin/bash

# Exit on any error
set -e

docker run --rm -d --network=host -v blendfarm:/home/ubuntu --name blendfarm blendfarm
