# neovim config

#### Copy all files to

`~/.config/nvim`

### Keyboard shortcuts

#### General

In progress

```
[b - prev buffer
]b - next buffer
<C-b> - close buffer

```

#### Windows
```
<C-h> - go to left window
<C-l> - go to right window
<C-k> - go to upper window
<C-j> - go to down window
<C-w>r - swap windows
- resize vertical -5
= resize vertical +5
_ resize horizontal -2
+ resize horizontal +2
```

#### Terminal

`<C-t> - toggle terminal`

#### Flash search
```
s{string} - search for string
After typing f{char} or F{char}, you can repeat the motion with f or go to the previous match with F to undo a jump.
Similarly, after typing t{char} or T{char}, you can repeat the motion with t or go to the previous match with T.
; - next match
, - previous match
```

#### Telescope

```
<leader><leader> - find files
<leader>gf - git files
<leader>pg - grep
<leader>bb - showbuffers
<leader>th - telescope help tags

In telescope
<C-x> go to file selection as a split
<C-v> go to file selection as a vsplit
<C-t> go to a file in a new tab
```

#### Neo tree file explorers

```
<leader>e - toggle explorer
<leader>ge - toggle git explorer
<leader>be - showbuffers

In explorer
S - open split
s - open vsplit

In buffers explorer
bd - close buffer 
```

#### Undotree

`<leader>u - changes history in file`

#### Git

```
<leader>ge - opens git floating window
In window:
A  - git_add_all
gu - git_unstage_file
ga - git_add_file
gr - git_revert_file"
gc - git_commit"
gp - git_push"
gg - git_commit_and_push"
---
]h - go next hunk
[h - go prev hunk
<leader>gsh - stage hunk
<leader>gu - undo stage hunk
<leader>gsb - stage buffer
<leader>gd - diff this
<leader>gb - toggle current line blame
<leader>gp - preview hunk changes
```

#### LSP

```
<C-space> - open completion menu
<C-e> - close completion menu
Move simply with arrows or tab and click enter to use suggestion
```

#### Formatting

```
<leader>ff - format file
<C-e> - eslint fix problems all in file
```

#### Comments

```
<C-/> - Toggles the current line using linewise comment (Also posible to use it in Visual model)
gcc - Toggles the current line using linewise comment
gbc - Toggles the current line using blockwise comment
[count]gcc - Toggles the number of line given as a prefix-count using linewise
[count]gbc - Toggles the number of line given as a prefix-count using blockwise
gc[count]{motion} - (Op-pending) Toggles the region using linewise comment
gb[count]{motion} - (Op-pending) Toggles the region using blockwise comment
```

#### Trouble

```
<leader>xx - show troubles
<leader>xw - show troubles (workspace diagnostic)
<leader>xd - show troubles (document diagnostic)
```

#### Testing (works for Jest and Vitest)

command to run test must be `npm run test:unit`

```
<leader>tt - Run File
<leader>tT - Run All Test Files
<leader>tr - Run Nearest
<leader>tl - Run Last
<leader>ts - Toggle Summary
<leader>to - Show Output
<leader>tO - Toggle Output Panel
<leader>tS - Stop

In Summary panel:
a - attach
m - mark
M - clear marked
T - clear target
d - debug
D - debug marked
<CR>/enter - expand
e - expand all
i - jump to
J - next failed
K - prev failed
o - output
r - run
R - run marked
O - short
u - stop
t - target
w - watch

```

#### Harpoon

```
<leader>a - append to quick menu
<leader>h - toggle quick menu
<C-S-P> - prev element in quick menu
<C-S-N> - next element in quick menu
```

#### Tabs (barbar)
```
<C-,> - previous tab (buffer)
<C-.> - next tab (buffer)
<C-1> - first tab
<C-2> - second
Same for others numbers
<C-p> - buffer picking
```

#### Mini.files 
```
<leader>m - open mini files
Inside explorer:
close       = 'q',
go_in       = 'l',
go_in_plus  = 'L',
go_out      = 'h',
go_out_plus = 'H',
reset       = '<BS>',
reveal_cwd  = '@',
show_help   = 'g?',
synchronize = '=',
trim_left   = '<',
trim_right  = '>',
```
