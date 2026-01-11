let g:vim_markdown_folding_disabled = 1
     let g:vim_markdown_frontmatter = 1
     let g:vim_markdown_toc_autofit = 1
                   let g:fzf_layout = { 'window': {'width': 0.9, 'height': 0.6, 'border': 'rounded'}  }
    let g:NERDTreeRespectWildIgnore = 1
            let g:NERDTreeMinimalUI = 1
              let g:rooter_patterns = ['.git', '_darcs', '.hg', '.bzr', '.svn', 'Makefile', 'package.json', '.editorconfig']
          let g:rooter_silent_chdir = 1
     let g:indent_guides_guide_size = 1
               let g:switch_mapping = "-"

Plug 'airblade/vim-rooter'
Plug 'godlygeek/tabular'
Plug 'junegunn/fzf.vim' | Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree', { 'do': 'NERDTreeFocus' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-surround' | Plug 'tpope/vim-repeat'
Plug 'AndrewRadev/switch.vim'
Plug 'wellle/targets.vim'
Plug 'sainnhe/everforest'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'

if executable("npm")
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
    Plug 'zhumengu/vim-picgo'
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
endif

runtime! plug_opts.d/*.vim

