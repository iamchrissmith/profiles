#!/usr/bin/env bash

if [ ! -f ~/.zshrc  ]; then
	ln -s ~/.dotfiles/.zshrc ~/.zshrc
fi

if [ ! -f ~/.gitconfig ]; then
	ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
fi

if [ ! -f ~/.vimrc  ]; then
	ln -s ~/.dotfiles/.vimrc ~/.vimrc
fi

if [ ! -f ~/.zshenv ]; then
	cat > ~/.zshenv <<EOF
ZDOTDIR=~/.dotfiles
EOF
fi
