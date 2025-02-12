#!/usr/bin/env zsh

# Update input data

SOURCE_HOST="tau"
SOURCE_DIRS=("systemd/ip_accounting" "tracepoints/net")

for dir in "${SOURCE_DIRS[@]}"; do
  mkdir -p "${SOURCE_HOST}/${dir}"
  rsync -az --info=progress2 "${SOURCE_HOST}:/home/nix-bitcoin-monitor/${dir}/" "${SOURCE_HOST}/${dir}"
done
