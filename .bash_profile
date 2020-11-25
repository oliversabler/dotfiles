# include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi

# include .alias if it exists
if [ -f ~/dotfiles/.alias ]; then
    . ~/dotfiles/.alias
fi

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

