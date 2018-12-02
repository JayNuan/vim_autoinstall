# vim_autoinstall  
使用简介  
功能：  
1.使用shell或者python可以自动补齐文件的介绍信息  
2.界面优化调整，主题，缩进等  
3.在命令模式启用了鼠标功能  
4.安装了python插件  

1. 安装软件： git  
2. 使用git下载：  
   命令： git clone https://github.com/JayNuan/vim_autoinstall   
   
3. 安装的插件有：  
   nerdtree： 文件树插件,按F2可以快速打开  
   Pydiction： python自动补齐插件  
   taglist：  标签跳转插件 
   tagbar： 程序函数显示
   ctrlp.vim：  全文搜索功能
   indentLine： 缩进特别显示
   
  4. vimrc文件添加模块说明：
   从Github进行安装：  
        Plugin 'user/plugin'  
    从http://vim-scripts.org/vim/scripts.html进行安装：  
        Plugin 'plugin_name'  
    从另一个git软件库进行安装：  
        Plugin 'git://git.another_repo.com/plugin'  
    从本地文件进行安装：
        Plugin 'file:///home/user/path/to/plugin'
        
5.Vundle用法：  
	在vim内部使用：  
		安装一个新的插件  
		PluginInstall命令会安装在你的.vimrc文件中列出来的所有插件。你还可以只安装某一个特定的插件，只要传递其名称。  
			:PluginInstall   
			:PluginInstall <plugin-name>  
		清理闲置未用的插件  
		如果你有任何闲置未用的插件，只要使用PluginClean命令，就可以清理它。  
			:PluginClean  
		搜索插件 
		如果你想从所提供的插件列表安装一个插件，搜索功能就很有用。  
			:PluginSearch <text-list>  
		更新插件  
		更新全部插件    
			:PluginUpdate  
	在shell命令行使用 
		1.执行完命令立即退出(以install为例)：  
			[root@localhost]# vim +PluginInstall +qall  
		2.执行完毕停留在vim界面(以update为例)  
			[root@localhost]# vim +PluginUpate  
      
