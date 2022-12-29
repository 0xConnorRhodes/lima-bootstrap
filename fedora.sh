#!/usr/bin/env bash

sudo dnf update -y

sudo dnf install -y \
	python3-pip \
	fish \
	zoxide \
	neovim \
	ripgrep \
	toolbox
