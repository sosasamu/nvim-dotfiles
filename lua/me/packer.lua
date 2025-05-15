-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  use {
	  'VonHeikemen/lsp-zero.nvim',
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

  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")



  --Markdown preview
  use 'ellisonleao/glow.nvim'
  use 'simrat39/symbols-outline.nvim'
  -- install without yarn or npm
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })

  --Language packs
  use 'sheerun/vim-polyglot'

  --Nvim motions
  use {
    'phaazon/hop.nvim',
    branch = 'v2',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require 'hop'.setup { keys = 'etovxpqdgfblzhckisuran' }
    end
  }

  -- LSP Saga ????
  use({
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      require('lspsaga').setup({})
    end,
  })

  --File browsing
  use 'nvim-telescope/telescope-file-browser.nvim'

  --Buffer navigation
  use 'nvim-lualine/lualine.nvim'

  --Haskell
  use 'neovimhaskell/haskell-vim'
  use 'alx741/vim-hindent'

  --debugging
  use 'mfussenegger/nvim-dap'
  use 'leoluz/nvim-dap-go'
  use 'rcarriga/nvim-dap-ui'
  use 'theHamsta/nvim-dap-virtual-text'
  use 'nvim-telescope/telescope-dap.nvim'

  --Grammar checking because I can't english
  use 'rhysd/vim-grammarous'

  --Telescope Requirements
  use 'nvim-lua/popup.nvim'

  --Telescope
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  --git diff
  use 'sindrets/diffview.nvim'

  --magit
  use 'TimUntersberger/neogit'

  --todo comments
  use 'folke/todo-comments.nvim'

  --devicons
  use 'kyazdani42/nvim-web-devicons'

  --fullstack dev
  use 'pangloss/vim-javascript' --JS support
  --use 'leafgarland/typescript-vim' --TS support
  use 'vim-jsx-typescript'
  use 'maxmellon/vim-jsx-pretty' --JS and JSX syntax
  use 'mattn/emmet-vim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'
  -- le duck
  use 'tamton-aquib/duck.nvim'

  use 'dinhhuy258/git.nvim'

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }

end)

