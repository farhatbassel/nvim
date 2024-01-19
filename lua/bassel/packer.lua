vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use ('Mofiqul/vscode.nvim')
    use ('gmr458/vscode_dark_modern.nvim')
    use ('folke/tokyonight.nvim')
    use ({ 'projekt0n/github-nvim-theme' })
    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use ('nvim-treesitter/playground')
    use ('theprimeagen/harpoon')
    use ('mbbill/undotree')
    use ('tpope/vim-fugitive')
    use ('kyazdani42/nvim-web-devicons')
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use ('christoomey/vim-tmux-navigator')
    use ('iamcco/coc-angular')
    use ('tpope/vim-surround')
    use ('numToStr/Comment.nvim')
    use ('vim-test/vim-test')
    use ('f-person/git-blame.nvim')
    use ('lewis6991/gitsigns.nvim')

    -- Presentation
    use ('junegunn/goyo.vim')

    -- Git Worktree
    use ('ThePrimeagen/git-worktree.nvim')
    
    use ('hoob3rt/lualine.nvim')
    use ('nvim-lua/popup.nvim')
    use ('nvim-lua/plenary.nvim')
    use ('nvim-telescope/telescope-fzy-native.nvim')
    use ('mfussenegger/nvim-dap')

    use {
        "folke/trouble.nvim",
        requires = { {"nvim-tree/nvim-web-devicons" } },
    }

    use {"j-hui/fidget.nvim"}
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }
}
end)
