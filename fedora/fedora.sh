#!/usr/bin/env bash

sudo dnf update -y

# enable RPM Fusion
sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

# enable RPM Fusion nonfree
sudo dnf install -y \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm


sudo dnf install -y \
	python3-pip \
	fish \
	zoxide \
	neovim \
	ripgrep \
	toolbox \
	htop \
	tealdeer \
	git \
	bat \
	tree

tldr --update

# symlink the home directory on the host
ln -s /Users/c.rhodes/ ~/host
