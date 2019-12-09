#!/bin/bash
if test -f "../.vimrc"; then
	echo "Found existing .vimrc, moving existing .vimrc to .vimrc.bak"
	mv ../.vimrc ../.vimrc.bak
fi
if test -f "../.bashrc"; then
	echo "Found existing .bashrc, moving existing .bashrc to .bashrc.bak"
	mv ../.bashrc ../.bashrc.bak
fi
if test -f "../.Xresources"; then
	echo "Found existing .Xresources, moving existing .Xresources to .Xresources.bak"
	mv ../.Xresources ../.Xresources.bak
fi
if test -f "../.zshrc"; then
	echo "Found existing .zshrc, moving existing .zshrc to .zshrc.bak"
	mv ../.zshrc ../.zshrc.bak
fi
if test -f "../.config/i3/config"; then
	echo "Found existing i3 config, moving existing config to config.bak"
	mv ../.config/i3/config ../.config/i3/config.bak
fi
ln vim ../.vimrc
ln bashrc ../.bashrc
ln Xresources ../.Xresources
ln zshrc ../.zshrc
mkdir -p ../.config/i3
ln config-i3-config ../.config/i3/config

