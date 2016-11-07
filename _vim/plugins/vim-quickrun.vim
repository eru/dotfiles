" vim-quickrun.vim {{{
let g:quickrun_config = {}

" reST preview
let g:quickrun_config['rst'] = {
  \ 'command': 'make',
  \ 'outputter': 'quickfix',
  \ 'hook/sphinx_open/enable' : 1,
  \ 'cmdopt': 'html',
  \ 'exec': '%c %o'
  \ }
" }}}
