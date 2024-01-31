# NeoVim config

#### Copy all files to

`~/.config/nvim`

### Keyboard shortcuts

#### General

In progress

```
[b - prev buffer
]b - next buffer
<C-b> - close buffer
<leader>b - showbuffers

<C-x> go to file selection as a split
<C-v> go to file selection as a vsplit
<C-t> go to a file in a new tab
```

#### Terminal

`<C-t> - toggle terminal`

#### Telescope

```
<leader><leader> - find files
<leader>gf - git files
<leader>pg - grep
<leader>th - telescope help tags
```

#### Neo tree file explorers

```
<leader>e - toggle explorer
<leader>ge - toggle git explorer
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

`<leader>ff - format file`

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

#### Testing (works for Jest)

```
<leader>tt - Run File
<leader>tT - Run All Test Files
<leader>tr - Run Nearest
<leader>tl - Run Last
<leader>ts - Toggle Summary
<leader>to - Show Output
<leader>tO - Toggle Output Panel
<leader>tS - Stop
```

#### Harpoon

```
<leader>a - append to quick menu
<C-e> - toggle quick menu
<C-S-P> - prev element in quick menu
<C-S-N> - next element in quick menu
```
