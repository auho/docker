#!/bin/bash

basePath=$(cd `dirname $0`; pwd)
zshPath=${basePath}"/zsh"
# install zsh via curl

cd ~
if [[ ! -d "~/.oh-my-zsh" ]]; then
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

cp ${zshPath}/theme/ethan.zsh-theme ~/.oh-my-zsh/themes/

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ethan"/' ~/.zshrc

# append zshrc
if [[ `grep -c "setopt no_nomatch" ~/.zshrc` -eq '0' ]]; then
    cat ${zshPath}/rc/zshrc.append >> ~/.zshrc
fi
