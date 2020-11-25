#!/usr/bin/env bash

# Install ohmyzsh
ZSH="$HOME/dotfiles/oh-my-zsh" sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Create symbolic links
export DOTFILES_PATH
DOTFILES_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -s "$DOTFILES_PATH/.bash_profile" ~
ln -s "$DOTFILES_PATH/git/.gitconfig" ~

# Add .bash_profile to .zshrc
echo -e 'source $HOME/.bash_profile' >> ~/.zshrc