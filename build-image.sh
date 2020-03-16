#!/bin/bash

set -eux

IMAGE_NAME="corodotdev/concourse-semantic-release"

docker build . -t $IMAGE_NAME
docker push $IMAGE_NAME
