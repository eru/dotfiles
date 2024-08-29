" KeyMap

" いつでも, h j k l でカーソル移動
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

" いつでも, C-a C-e で行頭/行末移動
noremap <C-a> <Home>
noremap! <C-a> <Home>
noremap <C-e> <End>
noremap! <C-e> <End>

" 表示行単位で上下移動するように
nnoremap j gj
nnoremap k gk

" 逆に普通の行単位で移動したい時のために逆の map も設定しておく
nnoremap gj j
nnoremap gk k

" 行末までのヤンク
nnoremap Y y$

" インクリメント
" boole.nvimにまかせる
" nnoremap + <C-a>
" nnoremap - <C-x>

"画面送り
noremap <Leader>j <C-f>
noremap <Leader>k <C-b>

" 矢印キーを無効にする
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" 保存
nnoremap <Leader>w :w<CR>
