" 256color
set t_Co=256

" darkmode
set background=dark

" ColorScheme
"colorscheme developer
if filereadable(expand($HOME.'/.vim/plugged/lanox-vim-theme/colors/lanox.vim'))
  colorscheme lanox
endif

" transparent background
highlight Normal ctermbg=none
highlight NonText ctermbg=none

" cursor line is underline
highlight CursorLine cterm=underline ctermfg=none ctermbg=none
highlight CursorLineNR cterm=underline ctermfg=4 ctermbg=none
highlight LineNR cterm=none ctermfg=4 ctermbg=none
