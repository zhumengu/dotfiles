inoremap -. ->
inoremap =. =>
inoremap <C-d> <C-[>mzyyp`zgj
nmap G Gzz
nmap n nzzzv
nmap N Nzzzv
nmap ： :
nmap ; :
nmap <F3>                :w!<cr>
nmap <silent> <leader>rc :e ~/.vimrc<cr>
nmap <silent> <leader>rr :e!<cr>
nmap <silent> ,n :bn<cr>
nmap <silent> ,p :bp<cr>
nmap <silent> ,d :bd<cr>
nmap <silent> <leader>e  :set wrap!<cr>
nmap <silent> <leader>gg :Git push origin master<cr>
nmap <silent> <leader>g  :Git<cr>
nmap <silent> <leader>s  :Rg!<cr>
nmap <silent> <leader>f  :Files<cr>
nmap <silent> <leader>b  :Buffers<cr>
nmap <silent> <leader>m  :History<cr>
nmap <silent> <leader>h  :set hlsearch!<cr>
nmap <silent> <leader>q  :q<cr>
nmap <silent> <leader>t  :NERDTreeFocus<cr>
nmap <silent> <leader>w  :w!<cr>
autocmd FileType markdown nmap <silent><buffer><leader>p  :call job_start(["inlyne", expand("%")])<cr>
vmap /                   :Tabularize /
