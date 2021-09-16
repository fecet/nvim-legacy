vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- base plugin
  use {'wbthomason/packer.nvim'}
  use {'nvim-lua/plenary.nvim'}
  use {'nvim-lua/popup.nvim'}
  ---- theme and color
  --use {'tjdevries/colorbuddy.vim'}
  --use {'Th3Whit3Wolf/onebuddy'}
  use {'norcalli/nvim-colorizer.lua', config = function() require('colorizer').setup() end}
  use {'p00f/nvim-ts-rainbow'}
  ---- buffer | statusline | icon | treeview | startup buffer
  use {'glepnir/dashboard-nvim'}
  --use {'kevinhwang91/rnvimr'}
  ---- use {'kyazdani42/nvim-tree.lua'}
  use {'kyazdani42/nvim-web-devicons'}
  use {'akinsho/nvim-bufferline.lua', config = require('plugins.bufferline')}
  use {'glepnir/galaxyline.nvim', branch = 'main', config = function() require('plugins.eviline') end}
  ---- treesitter and treesitter base plug
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = require('plugins.treesitter')}
  use {'nvim-treesitter/nvim-treesitter-textobjects'}
  use {'nvim-treesitter/nvim-treesitter-refactor'}
  --use {'lewis6991/spellsitter.nvim', config = require('plugins.spellsitter')}
  ---- git
  use {'lewis6991/gitsigns.nvim', config = require('plugins.gitsigns')}
  use {'kdheepak/lazygit.nvim'}
  --use {'sindrets/diffview.nvim', config = require('plugins.diffview')}
  ---- translator
  --use {'voldikss/vim-translator'}
  ---- toggle tansparent
  --use {'xiyaowong/nvim-transparent'}
  ---- comment
  --use {'b3nj5m1n/kommentary'}
  --use {'folke/todo-comments.nvim', config = function() require('todo-comments').setup() end}
  ---- highlight different word at same time
  --use {'lfv89/vim-interestingwords'}
  ---- db manage
  --use {'tpope/vim-dadbod'}
  --use {'kristijanhusak/vim-dadbod-ui'}
  ---- incsearch
  --use {'kevinhwang91/nvim-hlslens'}
  ---- terminal
  --use {'akinsho/nvim-toggleterm.lua', config = require('plugins.toggleterm')}
  ---- editing
  --use {'tpope/vim-surround'}
  use {'windwp/nvim-autopairs', config = require('plugins.autopairs')}
  --use {'itchyny/vim-cursorword'}
  --use {'windwp/nvim-ts-autotag'}
  --use {'andymass/vim-matchup'}
  ---- batter quickfix window
  --use {'kevinhwang91/nvim-bqf'}
  ---- powerful replace tool
  --use {'windwp/nvim-spectre'}
  ---- fuzzy finder
  --use {'sudormrfbin/cheatsheet.nvim'}
  --use {'nvim-telescope/telescope-hop.nvim'}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  --use {'nvim-telescope/telescope-fzf-writer.nvim'}
  --use {'nvim-telescope/telescope-dap.nvim'}
  --use {'nvim-telescope/telescope.nvim', config = require('plugins.telescope')}
  use {'nvim-telescope/telescope.nvim'}
  ---- motion
  --use {'phaazon/hop.nvim', as = 'hop', config = function() require('hop').setup() end}
  --use {'rhysd/clever-f.vim'}
  ---- rest client
  --use {'NTBBloodbath/rest.nvim', config = function() require('rest-nvim').setup() end}
  ---- project manager
  --use {'ahmedkhalf/project.nvim', config = require('plugins.project')}
  ---- markdown preview
  --use {'npxbr/glow.nvim', run = ':GlowInstall'}
  ---- lsp auto completion & snip
  --use {'rafamadriz/friendly-snippets'}
  --use {'hrsh7th/vim-vsnip'}
  --use {'hrsh7th/vim-vsnip-integ'}
  --use {'hrsh7th/cmp-vsnip'}
  --use {'hrsh7th/cmp-buffer'}
  --use {'hrsh7th/cmp-nvim-lsp'}
  --use {'hrsh7th/cmp-path'}
  --use {'f3fora/cmp-spell'}
  --use {'octaltree/cmp-look'}
  --use {'ray-x/cmp-treesitter'}
  --use {'tzachar/cmp-tabnine', run='./install.sh'}
  --use {'kristijanhusak/vim-dadbod-completion'}
  --use {'hrsh7th/nvim-cmp', config = require('plugins.cmp')}
  ---- use neovim in browser
  ---- use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
  ---- nvim debug tool
  --use {'mfussenegger/nvim-dap'}
  --use {'rcarriga/nvim-dap-ui', config = function() require("dapui").setup() end}
  --use {'theHamsta/nvim-dap-virtual-text'}
  ---- which keys
  --use {'folke/which-key.nvim', config = require('plugins.which-key')}
  ---- lsp setup
  --use {'ray-x/lsp_signature.nvim', config = require('plugins.lsp_signature')}
  --use {'mhartington/formatter.nvim', config = require('plugins.formatter')}
  --use {'neovim/nvim-lspconfig'}
  --use {'kabouzeid/nvim-lspinstall', config = require('plugins.lspinstall')}
  --use {'RishabhRD/popfix'}
  --use {'RishabhRD/nvim-lsputils', config = function() require('plugins.lsputils') end}
  --use {'norcalli/snippets.nvim', config = function() require('snippets').use_suggested_mappings() end}
  --use {'folke/trouble.nvim', config = function() require('trouble').setup() end}
  --use {'onsails/lspkind-nvim', config = require('plugins.lspkind')}
  ---- wrapper for jdtls
  --use {'mfussenegger/nvim-jdtls'}
end)
