安装Golang,脚本
---------------------------------------------------------------------------------
#!/bin/bash

cd ~/

yum install zsh autojump autojump-zsh wget tar ctags ctags-etags git python-devel cmake g++ gcc-c++ -y
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

wget https://raw.githubusercontent.com/fivestarsky/VIM_FIle/master/vimrc 
mv ~/vimrc ~/.vimrc

wget https://raw.githubusercontent.com/fivestarsky/VIM_FIle/master/zshrc
rm ~/.zshrc -rf
mv ~/zshrc ~/.zshrc

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

mkdir ~/setup
cd ~/setup
wget http://www.golangtc.com/static/go/go1.4.2.linux-amd64.tar.gz
tar -C /usr/local -xzf ./go1.4.2.linux-amd64.tar.gz
cd ~/
rm ~/setup -rf
mkdir ~/gopath
echo "export GOPATH=$HOME/gopath" >> ~/.bashrc
echo "export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin" >> ~/.bashrc
source ~/.bashrc

mkdir ~/.vim/colors
cd ~/.vim/colors
wget https://raw.githubusercontent.com/fatih/molokai/master/colors/molokai.vim

#重启系统
#---------------------------------------------------------------------------------
#vim ~/.vimrc
#注释掉~/.vimrc最后两行
#退出 vim

#cd ~/.vim/bundle/YouCompleteMe/
#./install.sh --gocode-completer
#---------------------------------------------------------------------------------
