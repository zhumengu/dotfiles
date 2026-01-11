set nocompatible

"packadd editorconfig

let s:plug_autoload = expand('~/.vim/autoload/plug.vim')
let s:plugged_dir = expand('~/.vim/plugged')

function! s:install_vim_plug() abort
    if filereadable(s:plug_autoload)
        return 1
    endif

    if !isdirectory(fnamemodify(s:plug_autoload, ':h'))
        call mkdir(fnamemodify(s:plug_autoload, ':h'), 'p')
    endif

    if executable('curl')
        silent execute '!curl -fLo ' . shellescape(s:plug_autoload) .
                    \ ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    elseif executable('wget')
        silent execute '!wget -q -O ' . shellescape(s:plug_autoload) .
                    \ ' https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    else
        echohl ErrorMsg
        echo "Error: Unable to download vim-plug. Please install curl or wget."
        echohl None
        return 0
    endif

    if !filereadable(s:plug_autoload)
        echohl ErrorMsg
        echo "Error: Failed to download vim-plug. Please install manually."
        echohl None
        return 0
    endif

    echo "Vim-plug installed successfully!"
    return 1
endfunction

if s:install_vim_plug()
    augroup vim_plug_install
        autocmd!
        autocmd VimEnter * if exists(':PlugInstall') &&
                    \ len(filter(values(g:plugs), '!isdirectory(v:val.dir)')) > 0 |
                    \ echo 'Installing plugins...' |
                    \ PlugInstall --sync |
                    \ source $MYVIMRC |
                    \ endif
    augroup END
endif

call plug#begin(s:plugged_dir)
    source ~/.vim/plugins.vim
call plug#end()

source ~/.vim/maps.vim
source ~/.vim/abbreviate.vim
source ~/.vim/opts.vim

silent! color everforest
