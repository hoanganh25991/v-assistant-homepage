#!/bin/bash

set -ex

docker \
  buildx \
  build \
  --platform linux/amd64 \
  --tag registry.SeRene.ai/v-assistant-homepage:latest \
  .
