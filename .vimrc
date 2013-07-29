"在用户主目录下添加.vimrc文件

"语法高亮
syntax on

"内部编码设为 UTF-8
set encoding=utf-8

"打开自动缩进
set autoindent
"使用C语言的缩进方式
set cindent
"设置Tab键的宽度
set tabstop=4
set softtabstop=4
"设置缩进的空格数
set shiftwidth=4
"在缩进和遇到Tab时使用空格替代;（noexpandtab取消设置）
set expandtab

"查找时不考虑大小写;（set noic考虑大小写）
"set ic
"对查找时匹配的文本进行高亮；(set nohlsearch取消高亮)
"set hlsearch
"查找时增量匹配（输入多少个字符就马上匹配多少个字符）
set incsearch

"不自动换行(否：set wrap)
set nowrap

"在输入括号时光标会短暂地跳到与之相匹配的括号处，不影响输入
set showmatch

"显示行号（否：nonumber）
set number

"手动设置状态行（参见:help statusline）
set statusline=%F%m%r%h%w
set laststatus=2

"缺省不产生备份文件
set nobackup

"非兼容vi模式
set nocp

"打开状态栏标尺
"set ruler

"高亮当前行
set cursorline
hi CursorLine   cterm=NONE ctermbg=white ctermfg=black guibg=darkred guifg=white

"如果该 Vim 支持鼠标，则启用鼠标支持
if has('mouse')
  set mouse=a
endif

"cscope config
if has("cscope")
  set csprg=/usr/bin/cscope
  set csto=1
  set cst
  set nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
      cs add cscope.out
  endif
  set csverb
endif
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
