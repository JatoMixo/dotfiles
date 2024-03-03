vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	-- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}

	use("nvim-treesitter/nvim-treesitter", {run = ":TSUpdate"})

    use "windwp/nvim-ts-autotag"

	use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
	}

	use "nvim-tree/nvim-tree.lua"
	use "nvim-tree/nvim-web-devicons"

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use "m4xshen/autoclose.nvim"

    use {
        "folke/todo-comments.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    }

    use "theprimeagen/harpoon"
    use "mbbill/undotree"
    use "tpope/vim-fugitive"

    -- THEMES
    use { "catppuccin/nvim", as = "catppuccin" }
	use "navarasu/onedark.nvim"
    use { "rose-pine/neovim", as = "rose-pine" }

    -- Nvim plugin development
    use "milisims/nvim-luaref"
    use "folke/neodev.nvim"

    -- My plugins
    use "/home/jatomixo/Code/multiedit.nvim/"
end)
