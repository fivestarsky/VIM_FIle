#!/bin/bash

cd ~/

yum install vim zsh autojump autojump-zsh wget tar ctags ctags-etags git python-devel cmake g++ gcc-c++ -y
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
