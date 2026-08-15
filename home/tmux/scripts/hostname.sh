#!/usr/bin/env bash

hostname="$(hostname)"

if [ "$hostname" != "nixos" ]; then
    printf "| %s |" "$hostname"
fi
