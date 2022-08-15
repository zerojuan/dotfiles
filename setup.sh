#!/bin/sh

echo "Setting up development environment..."

if ! [ -d ~/.oh-my-zsh ]; then
    /bin/sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

rm -rf $HOME/.zshrc
cp $HOME/.dotfiles/.zshrc $HOME/.zshrc
