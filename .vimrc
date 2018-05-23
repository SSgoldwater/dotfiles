set nocompatible              " be iMproved, required
filetype off                  " required

 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
 " alternatively, pass a path where Vundle should install plugins
 "call vundle#begin('~/some/path/here')

 " let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'

 " The following are examples of different formats supported.
 " Keep Plugin commands between vundle#begin/end.
 " plugin on GitHub repo
 Plugin 'tpope/vim-fugitive'
 " plugin from http://vim-scripts.org/vim/scripts.html
 Plugin 'L9'
 " Git plugin not hosted on GitHub
 Plugin 'git://git.wincent.com/command-t.git'
 " git repos on your local machine (i.e. when working on your own plugin)
 Plugin 'file:///home/gmarik/path/to/plugin'
 " The sparkup vim script is in a subdirectory of this repo called vim.
 " Pass the path to set the runtimepath properly.
 Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
 " Avoid a name conflict with L9
 Plugin 'user/L9', {'name': 'newL9'}

 Plugin 'jelera/vim-javascript-syntax'
 " All of your Plugins must be added before the following line
 call vundle#end()            " required
 filetype plugin indent on    " required

:set number
:setfiletype javascript

:au FocusLost * :wa

hi link javaScriptTemplateDelim String
hi link javaScriptTemplateVar Text
hi link javaScriptTemplateString String

color desert
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

:syntax on

:set rtp+=$GOROOT/misc/vim
syntax on

"ERB Tags
:imap =<Tab> <%=  %><Esc>2hi

:imap ii <Esc>
:set tabstop=2
:set shiftwidth=2
:set expandtab

"HTML Tags
Plugin 'scrooloose/nerdtree'
:noremap <space>nt :NERDTreeToggle<CR>
