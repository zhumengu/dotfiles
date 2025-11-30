let g:vimwiki_folding='expr'
let g:vimwiki_conceal_pre=1
let g:rooter_silent_chdir = 1
let g:vim_markdown_folding_disabled = 1
let g:fzf_layout = { 'window': {'width': 0.9, 'height': 0.6, 'border': 'rounded'}  }
let g:NERDTreeRespectWildIgnore = 1
let g:NERDTreeMinimalUI=1
let g:airline_powerline_fonts = 1
let g:indent_guides_guide_size = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toc_autofit = 1
let g:vimwiki_global_ext = 0
let g:vimwiki_filetypes = ['markdown']
let g:vimwiki_list = [{
            \ 'path': '~/.vimwiki/work/wiki',
            \ 'syntax': 'markdown', 'ext': '.md',
            \ 'path_html': '~/.vimwiki/work/html',
            \ 'template_path': '~/.vimwiki/work/html/template/',
            \ 'template_default': 'template',
            \ 'template_ext': '.html'
            \ },{
            \ 'path': '~/.vimwiki/private/wiki',
            \ 'path_html': '~/.vimwiki/private/html/',
            \ 'syntax': 'markdown', 'ext': '.md'
            \ }
            \ ]
let g:rooter_patterns = ['.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'package.json', '.editorconfig']
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

Plug 'airblade/vim-rooter'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf.vim' | Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree', { 'do': 'NERDTreeFocus' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround' | Plug 'tpope/vim-repeat'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'
Plug 'wellle/targets.vim'
Plug 'ryanoasis/vim-devicons'

