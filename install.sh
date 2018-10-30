#!/bin/bash

#安装vim依赖安装包,更新vim到最新版
function custom_vim(){
	sudo apt install tmux git tree python3-dev ctags build-essential cmake python-dev silversearcher-ag -y
	cp -f .tmux.conf ~/.tmux.conf
	source tmux ~/.tmux.conf
	sudo add-apt-repository ppa:jonathonf/vim -y
	sudo apt update -y
	sudo apt install vim -y
	custom_vim_plug
}
#安装vim-plug
function custom_vim_plug(){
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	custom_tvim
}

#安装tvim配置
function custom_tvim(){
	cp -f .vimrc ~/.vimrc
	cp -rf colors ~/.vim
	vim -c ":PlugInstall" -c ":qa"
	cd ~/.vim/plugged/YouCompleteMe
	python3 install.py --clang-completer
	print_logo
}
# 打印logo
function print_logo()
{
    color="$(tput setaf 6)"
    normal="$(tput sgr0)"
    printf "${color}"
    echo '        __                          '
    echo '__   __/_/___ ___  '
    echo '\ \ / / / __ `__ \ '
    echo ' \ V / / / / / / / '
    echo '  \_/_/_/ /_/ /_/  '
    echo '                                   ...is now installed!'
    echo ''
    echo ''
    echo 'Just enjoy it!'
    echo 'p.s. Follow me at https://github.com/chxuan.'
    echo ''
    printf "${normal}"

	oh_my_zsh
}

#添加开机自启动
function custom_open(){
	echo 'aria2c --conf-path=/root/.aria2/aria2.conf -D' >> /etc/rc.local
	echo '/etc/init.d/shadowsocks-r start' >> /etc/rc.local
}
#安装oh-my-zsh
function oh_my_zsh(){
	sudo apt install zsh -y
	zsh --version
	sudo chsh -s $(which zsh)
	echo $SHELL
	sudo apt install git -y
	sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	cp -f .zshrc ~/.zshrc
}

function main(){
custom_vim
#安装oh-my-zsh
# oh_my_zsh
# #安装vim依赖安装包,更新vim到最新版
# custom_vim 
# #安装vim-plug
# custom_vim_plug
# #安装tvim配置
# custom_tvim
# # 打印logo
# print_logo
#添加开启自启动
	custom_open
}

# 调用main函数
main
