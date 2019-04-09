#!/bin/bash

pkglist=(
donjayamanne.githistory
eamodio.gitlens
k--kato.intellij-idea-keybindings
Kelvin.vscode-sshfs
MS-CEINTL.vscode-language-pack-ja
ms-python.python
ms-vscode.cpptools
ms-vsliveshare.vsliveshare
ms-vsts.team
trinm1709.dracula-theme-from-intellij
yzane.markdown-pdf
)
for i in ${pkglist[@]}
do
  code --install-extension $i
done
