#!/bin/bash

docker run --rm \
  -v "$(realpath .):/app" \
  --user $(id -u $USER):$(id -g $USER) \
  -w /app \
  ghcr.io/ledgerhq/ledger-app-builder/ledger-app-builder-lite:latest \
  bash -c "BOLOS_SDK=/opt/nanos-secure-sdk make DEBUG=1"
