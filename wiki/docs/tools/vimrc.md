
	" 开启文件类型侦测
	filetype on
	
	" 根据侦测到的不同类型加载对应的插件
	filetype plugin on
	
	" 显示光标当前位置
	set ruler
	
	" 开启行号显示
	set number

	" 高亮显示当前行/列
	set cursorline
	set cursorcolumn
	
	" 高亮显示搜索结果
	set hlsearch
	
	" 开启语法高亮功能
	syntax enable
	" 允许用指定语法高亮配色方案替换默认方案
	syntax on
	
	
	" 自适应不同语言的智能缩进
	filetype indent on

	" 将制表符扩展为空格
	set expandtab
	" 设置编辑时制表符占用空格数
	set tabstop=4
	" 设置格式化时制表符占用空格数
	set shiftwidth=4
	" 让 vim 把连续数量的空格视为一个制表符
	set softtabstop=4