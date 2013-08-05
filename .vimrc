set nu
syntax on
set shiftwidth=4
set tabstop=4
set showmatch
set autoindent
map <F9> :tabprevious<CR>
map <F10> :tabnext<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cscope setting

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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags setting
set tags=./tags,./../tags,./*/tags;

" Tag list (ctags)

filetype on                            

let Tlist_Ctags_Cmd = '/usr/bin/ctags'

let Tlist_Show_One_File = 1         
let Tlist_Exit_OnlyWindow = 1      
let Tlist_Use_Right_Window = 1    
  
map <silent> <F8> :TlistToggle<cr>
""""""""""""""omni auto complete'''''''''' 
set nocp 
filetype plugin indent on 
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> 
set completeopt=menu 
 
":inoremap ( ()<ESC>i 
":inoremap ) <c-r>=ClosePair(')')<CR> 
":inoremap { {}<ESC>i 
":inoremap } <c-r>=ClosePair('}')<CR> 
":inoremap [ []<ESC>i 
":inoremap ] <c-r>=ClosePair(']')<CR> 
":inoremap < <><ESC>i 
":inoremap > <c-r>=ClosePair('>')<CR> 
":inoremap " ""<ESC>i 
":inoremap ' ''<ESC>i 
"
" function ClosePair(char) 
"    if getline('.')[col('.') - 1] == a:char 
"       return "\<Right>" 
"    else 
"       return a:char 
"    endif 
" endf


" let g:AutoOpenWinManager = 1 
let g:winManagerWidth = 35 
let g:winManagerWindowLayout=' BufExplorer,FileExplorer|TagList'  
map <F3>  :WMToggle<CR> 
 
syn on                      "语法支持

"common conf {{             通用配置
set ai                      "自动缩进
set bs=2                    "在insert模式下用退格键删除
set showmatch               "代码匹配
set laststatus=2            "总是显示状态行
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
set cursorline              "为光标所在行加下划线
set number                  "显示行号
set autoread                "文件在Vim之外修改过，自动重新读入
"
set ignorecase              "检索时忽略大小写
set fileencodings=uft-8,gbk "使用utf-8或gbk打开文件
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
"set foldmethod=syntax       "代码折叠
""}}

"conf for tabs, 为标签页进行的配置，通过ctrl h/l切换标签等
let mapleader = ','
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>
"
""conf for plugins {{ 插件相关的配置
"状态栏的配置 
""powerline{
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'
"}
""pathogen是Vim用来管理插件的插件
"pathogen{
"call pathogen#infect()
""}

"}}
