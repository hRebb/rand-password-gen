#!/bin/bash

# Update package information
sudo apt-get update

# Install the 'kmod' package
sudo apt-get install -y kmod

# Get the version of 'modinfo' command
modinfo_version=$(modinfo --version)

# Install 'modinfo' using 'nix-env' if it's not already installed
if ! command -v modinfo &>/dev/null; then
  nix-env -i modinfo
fi

# Print the version of 'modinfo'
echo "modinfo version: $modinfo_version"
