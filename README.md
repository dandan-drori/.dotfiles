# Configuration Files

Bashrc and Vimrc config files

## Table of Contents

- [General info](#general-info)
- [Technologies](#technologies)
- [Setup](#setup)

## General Info

This repository is made for sharing my evolving vimrc and bashrc configuration files.
This repository enables me to share these configuration files accross my various devices and keep them in sync.
Feel free to copy these files or parts of them into your own config files.

## Technologies

Project is created with:

- NVIM v0.4.4
- Bash - v5.0.17
- Vim-Plug - v0.10.0

## Setup

To run this project, fork the repository and clone it into your own machine:

```
$ git clone <repo-url>
```

## Software List

- Brave
- Blender
- VS-Code
- htop
- OnlyOffice
- Mailspring
- ranger
- Unity
- Node + Npm
- Yarn
- Postman
- Zoom
- Android Studio
- Figma

## Vim/Nvim Keyboard Shortcuts

### Basic Shortcuts

- u - undo last change
- ctrl + r - redo last change
- dd - delete current line
- D - delete till end of line
- yy - yank/copy current line 
- y$ - copy till end of line to avoid copying carrige return
- p - paste from the unnamed register on line below
- P - paste from unnamed register on line above
- o - move down a line and enter insert mode
- O - move up a line and enter insert mode
- A - move to end of the line and enter insert mode
- I - move to beginning of the line and enter insert mode
- s - delete character under cursor and enter insert mode
- S - delete line under cursor and enter insert mode
- f\<char\> - jump to next occurrence of \<char\> in current line
- F\<char\> - jump to previous occurence of \<char\> in current line
- /\<text\> - search current buffer for \<text\> going forward
- ?\<text\> - search current buffer for \<text\> going backward
- r\<char\> - replace character under cursor with \<char\>
- gt - go to next tab 
- gT - go to previous tab
- ctrl+w+w - switch between panes in split screen
- gf - go to file in path under cursor
- ~ - switch case of character under cursor
- \>\> indent current line
- \>\> indent current line

### Advanced Shortcuts

- diw - delete inner (under cursor) word
- ciw - delete inner (under corsor) word and enter insert mode
- dt\<char\> - delete text till \<char\> from cursor position
- ds" - delete surrounding quotes (requires surround.vim plugin)
- csttp - replace surrounding html tag with p tag (requires surround.vim plugin)
- ysiw" - add surrounding inner word quotes (add surrounding quotes) (requires surround.vim plugin)
- ys3jt - add surrounding html tag to 3 lines from cursor position (requires surround.vim plugin)
- dst - delete surrounding html tag (requires surround.vim plugin)
- gUU - make current line uppercase
- guu - make current line lowercase
- Macros are awesome:
	- q\<char\> - start recording a macro in the \<char\> register
	- q\<char\> - start recording a macro in the \<char\> register
	- @\<char\> - execute a macro in the \<char\> register
	- Pro tip: use general commands with macros like ciw and not cw to avoid problems

### Commands 

- . - repeat last noraml mode command
- :\<linenumber\> - go to line \<linenumber\>
- :split/vsplit - open new split window in horizontal/vertical split
- :resize/vertical resize +2 - resize windows
- :%s/\<old\>/\<new\>/gc - find all occurrences of \<old\>, replace with \<new\> and ask for confirmation
- :g/\<text\>/t2 - copy all lines with \<text\> and paste them in line 2 of the file
- :o \<filename\> - open a new file in current buffer
- :tabedit \<filename\> - open new file in a new tab
- :mksession \<filename\>.vim - save current buffers state to current directory
- $nvim -S \<filename\> - open a session in nvim
- $ nvim -p \<filename\> \<anotherfile\> - open multiple files in different tabs

### If you have any suggestions, please let me know!

#### Happy coding ;)
