#!/usr/bin/env bash

sudo dnf update -y


sudo dnf install -y \
	toolbox


# create an initial toolbox to pull the base cloud image
toolbox create -y

TOOLBOX_NAME=$(toolbox list | tail -n 1 | awk '{print $2}')

podman stop $TOOLBOX_NAME
