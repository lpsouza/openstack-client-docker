#!/bin/sh

IMAGE="lpsouza/openstack-cli"

docker build -t $IMAGE .

docker tag $IMAGE $IMAGE:queens
docker tag $IMAGE $IMAGE:12.0.0
