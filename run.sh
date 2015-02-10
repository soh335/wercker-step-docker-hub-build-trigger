#!/bin/sh

TRIGGER_TOKEN="$WERCKER_DOCKER_HUB_BUILD_TRIGGER_TOKEN"
REPO="$WERCKER_DOCKER_HUB_BUILD_TRIGGER_REPO"

curl --data  "build=true" -X POST https://registry.hub.docker.com/u/$REPO/trigger/$TRIGGER_TOKEN/
