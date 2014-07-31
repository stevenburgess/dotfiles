"enables syntax highlighting for a lot of different things
syntax enable
"currently using the dark solarized theme
set background=dark
colorscheme solarized
"enlarge the font, for my po po eyes
set guifont=Monospace\ 14

"setting the mapleader so I can toggle things
let mapleader = ","
let g:mapleader = ","

"sets a buffer for the tops and bottoms of the screen,
"so when you are scrolling off the bottom or top you
"have a little context
set so=7

"show your current line and column numbers, and the % of the file
"you have gone through.  Displayed at the bottom of the screen
set ruler

"set j to actually go down one visual line, not to the next line at
"that column number.  This is useful when lines are wrapping
map j gj
map k gk

"set ctrl-j to go down 10 lines, same for ctrl-k
map <C-j> 10j
map <C-k> 10k

"0 usually goes to the first character on a line, have it go to
"the first non-blank character instead
map 0 ^

"show a line at 80 char
set colorcolumn=80

"when creating new line in a file, this will try to get the indentation
"correct
filetype indent plugin on

"disable the arrow keys, use hjkl
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"show whitespace on demand
"start by setting how things appear
"eol is desplayed every newline character
"tab is any tab
"trail is any spaces after the last non-space character on a line
"extends/process only apply when wrap is off, they show lines going off screen
exec "set listchars=eol:\uB6,tab:\uBB\u2014,trail:\u2423,extends:>,precedes:<"

"so now pressing ,w will toggle showing all whitespace
nmap <leader>w :set list!<CR>

"press ,n to toggle showing the line numbers
map <leader>n :set number!<CR>

"press ,p to toggle plaste mode, for more on paste mode see
"github.com/stevenburgess/vim-paste
"setlocal seems like the best choice here, to only set it for this buffer
map <leader>p :setlocal paste!<CR>

"press ,t to trim all end of line whitespace. The regex is: when you see any
"number of whitespace characters, \s\+, followed by the end of the line, $,
"replace them with nothing.
map <leader>t :%s/\s\+$//<CR>

"a function to reverse the background color
function! ReverseBackground()
 if &background=="light"
 set background=dark
 else
 set background=light
 endif
endfunction
noremap <leader>l :call ReverseBackground()<CR>

"pressing ,ss will toggle spell checking
map <leader>ss :setlocal spell!<cr>
"go to next miss spelt word
map <leader>sl ]s
"go to previous mis spelt word
map <leader>sh [s
"add word to dictionary
map <leader>sa zg
"bring up list of suggestions
map <leader>s. z=

"press ,t to trim end of line whitespace on all lines in the file
map <leader>t :%s/\s\+$//<CR>

"this changes the way tab completion of VIM commands works, instead
"of navigating the choices via TAB and SHIFT TAB you will see a full list
"above the command bar.  you can navigate this bar with the arrow keys
set wildmenu

"sets search to ignore case
set ignorecase

"turns on incremental search, so that while you are typing your
"search term, results begin appearing. note that it does not highlight
"all occurrences of your incremental search, just the first one, the rest
"will be highlighted when you enter the search.
set incsearch

"disable all backup files, as these really only bother me when a terminal
"has crashed, I have yet to need the data in a swap file back.
"no backup files
set nobackup
"only in case you don't want a backup file while editing
set nowritebackup
"no swap files
set noswapfile

"building a good statusline

"set it so status line is always visible
set laststatus=2
"full path of file in buffer, but not really since it shortens your home
"directory to ~/
set statusline=%F
"shows the filetype in square brackets, may remove later since it should be
"evident in other ways
set statusline+=%y
"shows a [+] when the file has been modified sine the last time it was written
set statusline+=%m
"move to the right side of the screen
set statusline+=%=
"show the column the cursor is in, followed by a comma
set statusline+=%c,
"gives you the current line / total lines
set statusline+=%l/%L
"displays percent through file that you have been, Top and Bot when
"appropriate
set statusline+=\ %P     "percent through file

"PROBABLY DEFAULTS
"these entries are already defaults on most VIM implementations I have seen
"but I set them here to make darn sure

"highlight search results
set hlsearch

"highlight matching brackets
set showmatch

"attempt to indent correctly
set autoindent
set smartindent

"settings for python
"sets the width of tab and the autocolete indentation to 4
set tabstop=4
set shiftwidth=4
"makes the tabs actaully be spaces
set expandtab

"wrap long lines, as opposed to letting them scroll off the screen.  If you
"unset this, you might as well turn of the gj and gk bindings.
set wrap

"this fixes an error I was getting on newer terminals where the color column
"and syntax highlighting were not showing up.
set t_Co=256
