"enables syntax highlighting for a lot of different things
syntax enable
"currently using the dark solarized theme
set background=dark
colorscheme solarized
"enlarge the font, for my po po eyes
set guifont=Monospace\ 14

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
"newline is $
"trailing space is ~
"tab is  >-----
"extends/process only apply when wrap is off, they show lines going off screen
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<

"setting the mapleader so I can toggle things
let mapleader = ","
let g:mapleader = ","
"so now pressing ,w will toggle showing all whitespace
nmap <leader>w :set list!<CR>

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

