:set number
:syntax enable
:filetype indent plugin on
:set nocp
:set mouse=a
:set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:< "kad :set list rodytų viską, išskyrus tarpus

"VIM Addon Manager nustatymai
"mkdir ~/.vim/vim-addons/
"git clone git://github.com/MarcWeber/vim-addon-manager.git ~/.vim/vim-addons/vim-addon-manager/
set runtimepath+=~/.vim/vim-addons/vim-addon-manager
call vam#ActivateAddons(['a', 'Syntastic', 'pylint', 'c%213', 'clang_complete', 'AutoComplPop', 'L9', 'surround', 'clang', 'The_NERD_tree'])

"Syntastic nustatymai
set laststatus=2 " Always display the statusline in all windows
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"highlight SyntasticErrorSign guifg=white guibg=red
"highlight SyntasticErrorLine guibg=#2f0000
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_enable_balloons = 1
let g:syntastic_enable_highlighting = 1
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1

"NERDTree nustatymai
let NERDTreeShowHidden=1

"Dėl Python
"set expandtab           " enter spaces when tab is pressed
"set textwidth=120       " break lines when line length increases
"set tabstop=4           " use 4 spaces to represent tab
"set softtabstop=4
"set shiftwidth=4        " number of spaces to use for auto indent
"set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
"set backspace=indent,eol,start

au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4 autoindent backspace=indent,eol,start
