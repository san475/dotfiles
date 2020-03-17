#!/bin/bash

# Check if exists and is same
if diff "../.vimrc" "vim" > /dev/null; then
	echo "Found matching .vimrc, continuing."
else
	if test -f "../.vimrc"; then
		echo "Found existing .vimrc, moving existing .vimrc to .vimrc.bak"
		mv ../.vimrc ../.vimrc.bak
	fi
	ln vim ../.vimrc
fi

# Check if exists and is same
if diff "../.bashrc" "bashrc" > /dev/null; then
	echo "Found matching .bashrc, continuing."
else
	if test -f "../.bashrc"; then
		echo "Found existing .bashrc, moving existing .bashrc to .bashrc.bak"
		mv ../.bashrc ../.bashrc.bak
	fi
	ln bashrc ../.bashrc
fi

# Check if exists and is same
if diff "../.Xresources" "Xresources" > /dev/null; then
	echo "Found matching .Xresources, continuing."
else
	if test -f "../.Xresources"; then
		echo "Found existing .Xresources, moving existing .Xresources to .Xresources.bak"
		mv ../.Xresources ../.Xresources.bak
	fi
	ln Xresources ../.Xresources
fi

# Check if exists and is same
if diff "../.zshrc" "zshrc" > /dev/null; then
	echo "Found matching .zshrc, continuing."
else
	if test -f "../.zshrc"; then
		echo "Found existing .zshrc, moving existing .zshrc to .zshrc.bak"
		mv ../.zshrc ../.zshrc.bak
	fi
	ln zshrc ../.zshrc
fi

