# NeoVim config

#### Copy all files to

`~/.config/nvim`

### Keyboard shortcuts


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
```<leader>u - changes history in file```

#### Git

```
<leader>ge - opens git floating window
A  - git_add_all
gu - git_unstage_file
ga - git_add_file
gr - git_revert_file"
gc - git_commit"
gp - git_push"
gg - git_commit_and_push"
```

#### Formatting

`<leader>ff - format file`

#### Comments

```
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


