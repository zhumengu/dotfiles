set updatetime=750      " gitgutter 需要配置，进入 vim 起始页会因此一闪而过
set ttimeoutlen=100     " fcitx 需要, 不设置 esc 按键会延迟
set conceallevel=2
set vb t_vb=
set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*
set notagbsearch
set autoindent
set number
set numberwidth=6
set textwidth=0
set formatoptions+=mM
set fdm=syntax
set nowrap
set showcmd
set tabstop=4
set shiftwidth=4
set softtabstop=4
set showtabline=1
set shiftround
set mouse=a
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set encoding=utf-8
set fileformat=unix
set backspace=indent,eol,start
set incsearch           " 实时搜索
set hidden              " 切换buf不提示保存
set modeline            " 解释模式行
set laststatus=2
set t_Co=256            " 使用256色
if version >= 802
    set completeopt+=popup
endif
hi Normal ctermbg=NONE
set list!
"仅仅当系统不支持 unicode 字符时才使用 ascii 字符
if has('multi_byte') && &encoding ==# 'utf-8'
    let &listchars='tab:» ,trail:·,extends:#,nbsp:.'
else
    let &listchars='tab:> ,trail:.,extends:<,nbsp:.'
endif
