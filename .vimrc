set nocompatible               "获取最新的VIM设置和选项

so ~/.vim/plugins.vim          "载入插件参数

syntax enable                  "开启语法支持
set backspace=indent,eol,start "使退行删除像编辑器一样
let mapleader=","              "默认的<Leader>是'\',但是','我觉得会更好
set nonumber                   "禁用行号





"------------------------外观-----------------------------"
colorscheme atom-dark             "设置编辑器颜色GitHub地址: https://raw.githubusercontent.com/gosukiwi/vim-atom-dark/master/colors/atom-dark.vim
set t_CO=256                      "设置终端256真彩色
set guifont=Fira_Code:h16         "设置字体和高度
set guioptions-=e	          "不显示生硬的tab界面
set linespace=15                  "设置行间距

set guioptions-=l                 "关闭左侧滚动条
set guioptions-=L                 "存在垂直分割窗口时，关闭左侧滚动条
set guioptions-=r                 "关闭右侧滚动条
set guioptions-=R                 "存在垂直分割窗口时，关闭右侧滚动条

" 伪造每个窗口的自定义左填充
hi LineNr guibg=bg
set foldcolumn=3
hi foldcolumn guibg=bg

"摆脱丑陋的分裂边界
hi vertsplit guifg=bg guibg=bg


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
"清空搜索的高亮显示 `, `
nmap <Leader>ev :tabedit $MYVIMRC<cr> 

"编辑VIM配置文件~/.vimrc `,ev`
nmap <Leader><space> :nohlsearc<cr>    

"使用命令让NERDTreeToggle命令更加简单 `command + 1`
nmap <D-1> :NERDTreeToggle<cr>         

"绑定`,+f`快捷键，用于搜索tag关键字
nmap <Leader>f :tag<space>






"------------------------插件-----------------------------"


"/
"/ CtrlP
"/
"CtrlP命令检索数据时忽略的文件
let g:ctrlp_custom_ignore='node_modules\DS_Store\|git'

"匹配的结果的视窗配置
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'

"`Command + p` 映射为 `Ctrl +p`，功能一致
nmap <D-p> :CtrlP<cr>

"将Ctrl+r键映射为`Ctrl + p` 查找当前文件的tag
nmap <C-R> :CtrlPBufTag<cr>

"打开文件历史记录 `Command + e`
nmap <D-e> :CtrlPMRUFiles<cr>


"/
"/ NERDTree
"/
let NERDTreeHiJackNetrw = 0




"------------------------自动命令-----------------------------"
"保存时自动加载VIM配置文Go
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %  
augroup END

"温馨提示
" - 输入`zz`将光标所在行对齐到屏幕中间
