#####################################################
# File Name: vim_autoinstall_by_jaynuan.sh
# Author: linuan
# Mail: li-nuan@qq.com
# Create Time: 2018年12月02日 星期日 17时23分30秒
#===================================================
#!/bin/bash

command_arr=(vim git)
for var in ${command_arr[@]}
do
	which $var  >> ./vim_autoinstall.log
	rpmname_install_or_not=$(echo $?)
	if [[ $rpmname_install_or_not -ne 0  ]]
	then
		yum install -y $var >> ./vim_autoinstall.log
	fi
done

#git clone https://github.com/JayNuan/vim_autoinstall


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git_sucess_or_not=$(echo $?)
if [[ $git_sucess_or_not -ne 0 ]]
then
	exit 1
fi
cp -a vim_autoinstall/.vimrc ~/.vimrc

vim +PluginUpdate +qall
vim +PluginList
