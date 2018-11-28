" committia.vim {{{
let g:committia_min_window_width = 180

let g:committia_hooks = {}
function! g:committia_hooks.edit_open(info)
  vertical resize 100
endfunction
" }}}
