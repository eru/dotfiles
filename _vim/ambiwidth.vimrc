"
" This snippet is licensed under NYSL.
" See http://www.kmonos.net/nysl/NYSL.TXT
"
" http://qiita.com/items/c2bd46728364bdc7470b
if !has('gui_running')
  function! g:SetAmbigousWidth(width)
    unmap <Esc>[1;2R
    unmap <Esc>[1;3R
    if a:width == 1
      set ambiwidth=single
    elseif a:width == 2
      set ambiwidth=double
    endif
    let &t_ti = substitute(&t_ti, s:ambiguous_teststr, '', '')
    return ''
  endfunction

  if &term =~? 'xterm\|screen\|fbterm\|yaft'
    let s:ambiguous_teststr = "\e[1;1H\u25bd\e[6n"
  elseif &term =~? 'jfbterm'
    " jfbtermはゼロオリジンのCPR応答を返すバグがあるので
    " 位置を(+1, +1)だけずらしておく
    let s:ambiguous_teststr = "\e[2;2H\u25bd\e[6n"
  endif
  if exists('s:ambiguous_teststr')
    nnoremap <special> <expr> <Esc>[1;2R g:SetAmbigousWidth(1)
    nnoremap <special> <expr> <Esc>[1;3R g:SetAmbigousWidth(2)
    let &t_ti .= s:ambiguous_teststr
  endif
endif
