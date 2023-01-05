" fern.vim {{{
let g:fern#renderer = "nerdfont"

nmap <F7> :Fern . -reveal=% -drawer -toggle -stay<CR>

function! s:fern_settings() abort
  nmap <buffer><expr>
      \ <Plug>(fern-my-expand-or-collapse)
      \ fern#smart#leaf(
      \   "\<Plug>(fern-action-collapse)",
      \   "\<Plug>(fern-action-expand)",
      \   "\<Plug>(fern-action-collapse)",
      \ )
  nmap <buffer><nowait> l <Plug>(fern-my-expand-or-collapse)

  nmap <silent> <buffer> p     <Plug>(fern-action-preview:toggle)
  nmap <silent> <buffer> <C-p> <Plug>(fern-action-preview:auto:toggle)
  nmap <silent> <buffer> <C-d> <Plug>(fern-action-preview:scroll:down:half)
  nmap <silent> <buffer> <C-u> <Plug>(fern-action-preview:scroll:up:half)

  nmap <silent> <buffer> ^ <Plug>(fern-action-project-top:reveal)
endfunction

augroup fern-settings
  autocmd! *
  autocmd FileType fern call s:fern_settings()
  autocmd FileType fern call glyph_palette#apply()
augroup END
" }}}
