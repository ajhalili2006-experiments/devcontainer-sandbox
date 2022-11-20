#!/bin/env bash
#-------------------------------------------------------------------------------------------------------------------------
# Copyright (c) Andrei Jiroh Halili. All rights reserved.
# Licensed under the MIT License. See https://mau.dev/ajhalili2006-experiments/docker/devcontainer-sandbox/blob/main/LICENSE for license information.
#-------------------------------------------------------------------------------------------------------------------------
#
set -xe

REPO_ROOT="$(git rev-parse --show-toplevel)"
RAND_BUILD_ID="$(openssl rand -hex 12)"

if [ -f "$REPO_ROOT/.devcontainer/Dockerfile" ]; then
  echo "Building devcontainer image from default devcontainer Dockerfile path..."
  docker build --tag "buildkit.local/devcontainer-sandbox/$RAND_BUILD_ID" "$REPO_ROOT/.devcontainer"
fi