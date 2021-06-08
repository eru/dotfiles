" coc.nvim {{{
let g:coc_global_extensions = [
\  'coc-css',
\  'coc-html',
\  'coc-json',
\  'coc-pyright',
\  'coc-tsserver',
\  'coc-vetur',
\  'coc-emoji',
\  'coc-emmet',
\  'coc-pydocstring',
\]

" Ctrl+@で補完確定
inoremap <silent><expr> <c-@> coc#refresh()

" コード参照
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Kでドキュメント表示
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" シンボルとその参照箇所の非同期ハイライト
autocmd CursorHold * silent call CocActionAsync('highlight')

" シンボルのリネーム
nmap <leader>rn <Plug>(coc-rename)

" 選択範囲の自動フォーマット
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" 選択範囲のコードアクション実行
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" コードアクション実行
nmap <leader>ac  <Plug>(coc-codeaction)

" 自動修正
nmap <leader>qf  <Plug>(coc-fix-current)
" }}}
