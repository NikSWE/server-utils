#!/bin/sh

if ! command -v zsh 1>/dev/null 2>&1
then
    echo "Error: zsh is not installed"
    exit 1
fi

ANTIGEN_DIR=$HOME/.antigen
mkdir $ANTIGEN_DIR
curl -sL git.io/antigen > $ANTIGEN_DIR/antigen.zsh
echo "Installed: antigen in $ANTIGEN_DIR"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
mv $HOME/.zshrc $HOME/.zshrc-old
curl -sL https://raw.githubusercontent.com/muj-programmer/server-utils/master/templates/zshrc > $HOME/.zshrc
echo "Installed: oh-my-zsh in $HOME/.oh-my-zsh"

chsh -s $(which zsh)
echo "Action: changed default shell"

echo "Log back in for changes to take effect."
