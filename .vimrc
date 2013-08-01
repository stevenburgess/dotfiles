"enables syntax highlighting for alot of different things
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

"show your current line and colum numbers, and the % of the file
"you have gone through.  Displayed at the bottom of the screen
set ruler

"set j to actually go down one visual line, not to the next line at
"that column number.  This is useful when lines are wraping
map j gj
map k gk

"0 usually goes to the first characetr on a line, have it go to
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
