""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins Sections:
" -> 0: vim-plug                    [插件管理]
" -> 1: nerdtree                    [目录树]
" -> 2: nerdcommenter               [注释工具]
" -> 3: vim-interestingwords        [高亮选中]
" -> 4: vim-airline                 [状态栏]
" -> 5: vim-choosewin               [窗口切换]
" -> 6: undotree                    [回退工具]
" 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" => 0: vim-plug{{{
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'lfv89/vim-interestingwords'
Plug 'vim-airline/vim-airline'
Plug 't9md/vim-choosewin'
Plug 'mbbill/undotree'
call plug#end()
" }}}

" => 1: [Ctrl-t] nerdtree {{{
nnoremap <C-t> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" }}}

" => 2: nerdcommenter {{{
" <leader>c<space>: toggles the comment state
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" }}}

" => 3: vim-interestingwords {{{
" <leader>k and <Leader>K
" }}}

" => 4: vim-airline {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
" }}}

" => 5: vim-choosewin {{{
" invoke with '-'
nmap  -  <Plug>(choosewin)
" if you want to use overlay feature
let g:choosewin_overlay_enable = 1
" }}}

" => 6: [Ctrl-u] undotree {{{
let g:undotree_DiffAutoOpen = 0
nnoremap <C-u> :UndotreeToggle<CR>
" }}}

