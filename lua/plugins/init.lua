vim.cmd [[packadd packer.nvim]]

return require('packer').startup({ 
  function(use)
  -- base plugin
  use {'wbthomason/packer.nvim'}
  use {'nvim-lua/plenary.nvim'}
  use {'nvim-lua/popup.nvim'}
  --autosave
  use {"Pocco81/AutoSave.nvim", config= require('plugins.autosave')}

  use {
      'rmagatti/auto-session',
      config= require('plugins.session')
  }

  use {
      'rmagatti/session-lens',
      config= require('plugins.sess-len')
  }
  ---- theme and color
  --
  use 'folke/tokyonight.nvim'
  use {'dracula/vim', as='dracula'}
  --use {'tjdevries/colorbuddy.vim'}
  --use {'Th3Whit3Wolf/onebuddy'}
  use {'norcalli/nvim-colorizer.lua', config = function() require('colorizer').setup() end}
  --Startup
  use {'glepnir/dashboard-nvim'}
  --use {'henriquehbr/nvim-startup.lua', config=function() require('nvim-startup').setup() end}
  use {'tweekmonster/startuptime.vim'}

  ---- File Explorer
  use {'kevinhwang91/rnvimr'}
  ---- use {'kyazdani42/nvim-tree.lua'}
  ---- buffer | statusline | icon | treeview | startup buffer
  use {'kyazdani42/nvim-web-devicons'}
  use {'akinsho/nvim-bufferline.lua', config = require('plugins.bufferline')}
  use {'glepnir/galaxyline.nvim', branch = 'main', config = function() require('plugins.eviline') end}
  ---- treesitter and treesitter base plug
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config = require('plugins.treesitter')}
  use {'p00f/nvim-ts-rainbow'}
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
  -- comment
  use {'b3nj5m1n/kommentary'}
  --use {'folke/todo-comments.nvim', config = function() require('todo-comments').setup() end}
  ---- highlight different word at same time
  --use {'lfv89/vim-interestingwords'}
  ---- db manage
  --use {'tpope/vim-dadbod'}
  --use {'kristijanhusak/vim-dadbod-ui'}
  ---- incsearch
  use {'kevinhwang91/nvim-hlslens'}
  ---- terminal
  --use {'akinsho/nvim-toggleterm.lua', config = require('plugins.toggleterm')}
  ---- editing
  --use {'tpope/vim-surround'}
  use {'gibiansky/vim-latex-objects'}
  use {'gcmt/wildfire.vim'}
  -- use {'machakann/vim-sandwich'}
  --
  use {
  "blackCauldron7/surround.nvim",
  config = function()
    require"surround".setup {mappings_style = "sandwich"}
  end
  }
  use({
    "SirVer/ultisnips",
    requires = "fecet/vim-snippets",
  })
  use {'windwp/nvim-autopairs', config = require('plugins.autopairs')}
  --use {'itchyny/vim-cursorword'}
  --use {'windwp/nvim-ts-autotag'}
  --use {'andymass/vim-matchup'}
  ---- batter quickfix window
  --use {'kevinhwang91/nvim-bqf'}
  ---- powerful replace tool
  --use {'windwp/nvim-spectre'}
  ---- fuzzy finder
  use {'sudormrfbin/cheatsheet.nvim'}
  use {'nvim-telescope/telescope-hop.nvim'}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {'nvim-telescope/telescope-fzf-writer.nvim'}
  --use {'Shatur/neovim-session-manager'}
  use {'fannheyward/telescope-coc.nvim'}
  --use {'nvim-telescope/telescope-dap.nvim'}
  use {'nvim-telescope/telescope.nvim', config = require('plugins.telescope')}

  ---- motion
  use {'phaazon/hop.nvim', as = 'hop', config = function() require('hop').setup() end}
  use {'rhysd/clever-f.vim'}
  -- use {'psliwka/vim-smoothie'}
  use {
      'karb94/neoscroll.nvim', 
       config=require('plugins.neoscroll')
  }
  --[[ use {
      'Xuyuanp/scrollbar.nvim'
  } ]]

  ---- rest client
  --use {'NTBBloodbath/rest.nvim', config = function() require('rest-nvim').setup() end}
  ---- project manager
  --use {'ahmedkhalf/project.nvim', config = require('plugins.project')}
  ---- markdown preview
  use {'iamcco/markdown-preview.nvim',
       ft = {'markdown','rmd',},
       run = 'cd app && yarn install'
  }
  -- use {'jbyuki/nabla.nvim'}

  use 'ekickx/clipboard-image.nvim'
  use {'lervag/vimtex'}
  use {'godlygeek/tabular'}
  use {'plasticboy/vim-markdown'}
  --use {'npxbr/glow.nvim', run = ':GlowInstall'}
  ---- lsp auto completion & snip
  --use {'rafamadriz/friendly-snippets'}
  use {'neoclide/coc.nvim', branch = 'release'}
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
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
  ---- discord
  use {
      'andweeb/presence.nvim', 
      config=require('plugins.presence')
    }
  ---- apm
  -- use {"ThePrimeagen/vim-apm"}
  ---- nvim debug tool
  --use {'mfussenegger/nvim-dap'}
  --use {'rcarriga/nvim-dap-ui', config = function() require("dapui").setup() end}
  --use {'theHamsta/nvim-dap-virtual-text'}
  ---- which kef
  --use {'folke/which-key.nvim', config = require('plugins.which-key')}
  -- indent
  use {
      'glepnir/indent-guides.nvim', 
       config=require('plugins.indent')
   }
  -- run cell
  use {'adavidwilson/vim-slime'}
  use {
        'hanschen/vim-ipython-cell',
        ft={'python'},
        cmd={
            'IPythonCellExecuteCellVerboseJump',
            'IPythonCellPrevCell',
            'IPythonCellNextCell',
            'IPythonOpen',
            'IPythonCellInsertAbove',
            'IPythonCellInsertBelow'
        }
    }

-- sudo
  use {'lambdalisue/suda.vim'}


end,
config = {
  profile = {
    enable = true,
    threshold = 1 -- the amount in ms that a plugins load time must be over for it to be included in the profile
  }
}
}
)
