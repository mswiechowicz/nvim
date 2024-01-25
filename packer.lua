-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use { 'nvim-telescope/telescope.nvim', tag = '0.1.5', }

    use 'nvim-lua/plenary.nvim'

    use 'nvim-telescope/telescope-ui-select.nvim'

    use({
        'olimorris/onedarkpro.nvim',
        as = 'onedark',
        config = function()
            vim.cmd('colorscheme onedark')
        end
    })

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    use 'mbbill/undotree'

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use 'lewis6991/gitsigns.nvim'

    use 'nvim-lualine/lualine.nvim'

    use 'goolord/alpha-nvim'

    use 'folke/trouble.nvim'

    use 'nvimtools/none-ls.nvim'

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim",
        }
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- LSP Support
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'neovim/nvim-lspconfig'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use {
        "akinsho/toggleterm.nvim",
        tag = '*',
        config = function()
            require("toggleterm").setup()
        end
    }

end)

