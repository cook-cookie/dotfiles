#!/bin/bash

defaults write com.apple.finder AppleShowAllFiles TRUE
killall Finder
mkdir ~/Pictures/screenshots
defaults write com.apple.screencapture location ~/Pictures/screenshots
killall SystemUIServer
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install git
git clone https://github.com/cook-cookie/dotfiles.git
cd ~/dotfiles
DOT_FILES=(.zshrc .vimrc .vim)
for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotfiles/$file $HOME/$file
done
brew bundle
echo 'Complete!'