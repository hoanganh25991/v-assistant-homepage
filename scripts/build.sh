#!/bin/bash

set -ex

docker \
  buildx \
  build \
  --platform linux/amd64 \
  --tag registry.serene.ai/v-assistant-homepage:latest \
  .
