" neosnippet.vim {{{
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#snippets_directory = [
\  $HOME.'/.vim/plugged/neosnippet-snippets/snippets',
\  $HOME.'/dotfiles/_vim/snippets'
\]
imap <C-@> <Plug>(neosnippet_expand_or_jump)
smap <C-@> <Plug>(neosnippet_expand_or_jump)
xmap <C-@> <Plug>(neosnippet_expand_target)
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif
" }}}
