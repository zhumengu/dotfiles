autocmd BufWritePre *.vbs,*.bat,*.cmd setlocal fileformat=dos fenc=gbk tw=0
autocmd BufWritePre *.nsi setlocal bomb fenc=utf8
autocmd BufWritePost ~/.Xresources :silent !xrdb ~/.Xresources
autocmd BufWritePost ~/.vimrc :source ~/.vimrc
