" emmet-vim {{{
"
" MEMO
" * URL: http://docs.emmet.io/cheat-sheet/
" * <C+y>,  :execute trigger key
" * html:5  && <C+y>,
" * div>ul>li.class#id_$$*5  && <C+y>,
let g:user_emmet_complete_tag = 1
let g:user_emmet_settings     = {
\    'variables': {
\        'lang':               'ja',
\        'default_attributes': {
\            'a': {
\                'href': ''
\            },
\            'link': [
\                {
\                    'rel': 'stylesheet'
\                },
\                {
\                    'href': ''
\                }
\            ]
\        }
\    },
\    'html': {
\        'filters':     'html',
\        'indentation': '    '
\    },
\    'php' : {
\        'extends': 'html',
\        'filters': 'html,c'
\    }
\}
let g:user_emmet_mode        = 'a'
"let g:user_emmet_leader_key = ''
"}}}
