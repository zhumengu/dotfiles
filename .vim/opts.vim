set updatetime=750
set ttimeoutlen=100
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
set incsearch
set hidden
set modeline
set laststatus=2
set hlsearch
set t_Co=256
set path+=**
set background=dark
"set completeopt+=popup
hi Normal ctermbg=NONE
set list
if has('multi_byte') && &encoding ==# 'utf-8'
    let &listchars='tab:» ,trail:·,extends:#,nbsp:.'
else
    let &listchars='tab:> ,trail:.,extends:<,nbsp:.'
endif
