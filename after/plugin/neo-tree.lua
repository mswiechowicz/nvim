vim.keymap.set('n', '<leader>pt', ':Neotree toggle<CR>')
vim.keymap.set('n', '<leader>pg', ':Neotree git_status float toggle<CR>')

require('neo-tree').setup({
    window = {
        width = 25
    },
    filesystem = {
        filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
        },
        follow_current_file = {
            enabled = true,
            leave_dirs_open = false,
        },
        hijack_netrw_behavior = "open_current"
    },
})
