#!/usr/bin/env bash

if [ -z "$1" ]
then
    echo "Please provide the name of the host"
    exit 1
fi

if [ ! -f "src/host/$1/hardware.nix" ]
then
    echo "Host '$1' not found"
    exit 1
fi

sudo nixos-rebuild switch --flake .#$1
