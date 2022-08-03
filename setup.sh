#!/bin/sh

echo "Setting up development environment..."

if test !($which omz); then
    /bin/sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

rm -rf $HOME/.zshrc
ln -s ./.zshrc $HOME/.zshrc