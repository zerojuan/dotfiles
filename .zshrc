#!/bin/sh

echo "Setting up development environment..."

# if ! [ -x "$(command -v omz)" ]; then
if ! [ -d ~/.oh-my-zsh ]; then
    /bin/sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "OMZ already installed. Skipped."
fi

rm -rf $HOME/.zshrc
cp .zshrc $HOME/.zshrc
