syntax enable                  "开启语法支持
set backspace=indent,eol,start "使退行删除像编辑器一样
let mapleader=","              "默认的<Leader>是'\',但是','我觉得会更好
set number                     "设置行号






"------------------------外观-----------------------------"
colorscheme atom-dark             "设置编辑器颜色GitHub地址: https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/master/colors/atom-dark.vim
set t_CO=256                      "设置终端256真彩色
set guifont=Fira_Code:h16         "设置字体和高度
set linespace=15                  "设置行间距

set guioptions-=l                 "关闭左侧滚动条
set guioptions-=L                 "存在垂直分割窗口时，关闭左侧滚动条
set guioptions-=r                 "关闭右侧滚动条
set guioptions-=R                 "存在垂直分割窗口时，关闭右侧滚动条
"------------------------搜索-----------------------------"
set hlsearch                     "搜索高亮
set incsearch                    "搜索过程即使查看搜索结果





"------------------------分割管理-----------------------------"
set splitbelow                  "在当前打开新的缓冲区
set splitright                  "打开右侧的新分割窗格

nmap <C-H> <C-W><C-H>           "Ctrl+h替代系统的Ctrl+w+h的向左移动光标的操作
nmap <C-J> <C-W><C-J>           "Ctrl+j替代系统的Ctrl+w+j的向下移动光标的操作
nmap <C-K> <C-W><C-K>           "Ctrl+k替代系统的Ctrl+w+k的向左移动光标的操作
nmap <C-L> <C-W><C-L>           "Ctrl+l替代系统的Ctrl+w+l的向上移动光标的操作







"------------------------映射-----------------------------"
nmap <Leader>ev :tabedit $MYVIMRC<cr>  "编辑VIM配置文件~/.vimrc
nmap <Leader><space> :nohlsearc<cr>    "清空搜索的高亮显示





"------------------------自动命令-----------------------------"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %  "保存时自动加载VIM配置文Go
augroup END
