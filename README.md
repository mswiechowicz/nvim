# NeoVim config

#### Copy all files to

`~/.config/nvim`

#### Install all packages with Packer:

```
cd ~/.config/nvim
nvim packer.lua

-- go shift+: in nvim and type

:so
:PackerSync
```

### Keyboard shortcuts

#### Git

```
<leader>pg - opens git floating window
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
