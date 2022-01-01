vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
  function(use)
  -- base plugin
  use {'wbthomason/packer.nvim'}

  ----------
  --  ui  --
  ----------

  --[[ use {'glepnir/galaxyline.nvim', branch = 'main',
      after = "nvim-web-devicons",
      config = function() require('plugins.eviline') end
  } ]]
  use {
      "SmiteshP/nvim-gps",
      opt=true,
      after="nvim-treesitter",
      config=require('plugins.gps')
  }
  use {
      "arkav/lualine-lsp-progress",
      after="nvim-gps",
  }
  use {'hoob3rt/lualine.nvim',
      after = "lualine-lsp-progress",
      config = function() require('plugins.lualine') end
  }

  use {'glepnir/dashboard-nvim',
      opt=true,
      event="BufWinEnter"
    }
  use {'akinsho/nvim-bufferline.lua',
      opt=true,
      event="BufRead",
      -- after = "nvim-web-devicons",
      config = require('plugins.bufferline')
  }
  -- use 'folke/tokyonight.nvim'
  use {
      'kyazdani42/nvim-web-devicons',
      opt=false,
  }

  use {'Mofiqul/dracula.nvim',
      opt=false,
      config = require('plugins.colorscheme')
    }

  use {'lewis6991/gitsigns.nvim',
      event = {"BufRead", "BufNewFile"},
      requires = {"nvim-lua/plenary.nvim",opt = true},
      config = require('plugins.gitsigns')
  }

  use {'lukas-reineke/indent-blankline.nvim',
      opt= true,
      event="BufRead",
      config = require('plugins.indent')
  }

  ------------
  --  edit  --
  ------------

  use {'phaazon/hop.nvim',
        as = 'hop',
        config = function() require('hop').setup() end,
        cmd = {
                 "HopWord",
                 "HopLine",
                 "HopChar1",
                 "HopChar2",
                 "HopPattern",
                 "HopLineStart",
              },
        }

  use {'b3nj5m1n/kommentary',
        event={"BufRead"},
  }

  use {'gcmt/wildfire.vim',
        event={"BufRead"},
  }
  use {
      "blackCauldron7/surround.nvim",
      event={"BufRead"},
      config = function()
        require"surround".setup {
            mappings_style = "sandwich"
        }
      end
  }

  use {
      'abecodes/tabout.nvim',
      event={"InsertEnter"},
      config = require('plugins.tabout'),
  }

  use {'rhysd/clever-f.vim'}

  use {'kevinhwang91/nvim-hlslens',
        event={"BufRead"},
  }
  -- use {'psliwka/vim-smoothie'}
  use {
      'karb94/neoscroll.nvim',
       config=require('plugins.neoscroll'),
       event={"BufRead"},
  }

  use {'nvim-treesitter/nvim-treesitter',
        opt = true,
        run = ':TSUpdate',
        -- after="nvim-lsp-installer",
        event = {"BufRead"},
        -- event="VimEnter",
        config = function() require('plugins.treesitter') end,
        -- setup = function() require('plugins.treesitter') end,
    }

  use {'p00f/nvim-ts-rainbow',
        opt = true,
        after="nvim-treesitter",
  }

  use {'nvim-treesitter/nvim-treesitter-textobjects',
        opt = true,
        after="nvim-treesitter",
  }

  use {'romgrk/nvim-treesitter-context',
        opt = true,
        after="nvim-treesitter",
  }

  use {'JoosepAlviste/nvim-ts-context-commentstring',
        opt = true,
        after="nvim-treesitter",
  }

  use {'mfussenegger/nvim-ts-hint-textobject',
        opt = true,
        after="nvim-treesitter",
  }

  use {"Pocco81/AutoSave.nvim",
        config= require('plugins.autosave'),
        event='BufReadPre',
  }

  use {'norcalli/nvim-colorizer.lua',
      opt=true,
      config = function() require('colorizer').setup() end,
      event="BufRead",
  }


  use {'windwp/nvim-autopairs',
    config = require('plugins.autopairs'),
    after = "nvim-treesitter",
  }

  ---------------
  --  vim-lsp  --
  ---------------

  use {'neovim/nvim-lspconfig',
        opt = true,
        event = "BufReadPre",
  }

  use {'williamboman/nvim-lsp-installer',
        opt = true,
        after = "nvim-lspconfig",
        config=require('lsp.setup')
  }

  use {"zeertzjq/coq_nvim",
    opt = false,
    -- after = "nvim-lsp-installer",
    -- after = "nvim-treesitter",
    branch = "coq-marks-available",
    requires = {
            {"ms-jpq/coq.artifacts", branch = "artifacts"},
            {"ms-jpq/coq.thirdparty", branch = "3p"}
        },
  }

  use {
    "SirVer/ultisnips",
    requires = "fecet/vim-snippets",
    event={"InsertEnter"},
  }
  ---- git

  use {'nvim-telescope/telescope.nvim',
    cmd = "Telescope",
    requires = {
            {'nvim-lua/popup.nvim', opt = true},
            {'nvim-lua/plenary.nvim',opt = true},
        },
    config = require('plugins.telescope')
    }

  use {'ahmedkhalf/project.nvim',
        config = require('plugins.project'),
        after='telescope.nvim'
        }
  ---- markdown preview
  use {'iamcco/markdown-preview.nvim',
       ft = {'markdown','rmd',},
       run = 'cd app && yarn install'
  }
  -- use {'jbyuki/nabla.nvim'}

  use {'ekickx/clipboard-image.nvim',
        ft={'markdown','rmd'},
  }
  use {'lervag/vimtex',
        ft={'markdown','rmd','tex'},
  }
  use {'vim-pandoc/vim-pandoc-syntax',
        ft={'markdown','rmd','tex'},
  }

  use {'vim-pandoc/vim-pandoc',
        ft={'markdown','rmd','tex'},
  }

  use {'vim-pandoc/vim-rmarkdown',
        ft={'rmd'},
  }

  -------------
  --  tools  --
  -------------

  use {'lambdalisue/suda.vim',
        cmd={'SudaRead','SudaWrite'}
  }

  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  use {
      'andweeb/presence.nvim',
      config=require('plugins.presence'),
      event="BufReadPost"
  }

  use {
      'dstein64/vim-startuptime',
      cmd="StartupTime",
      opt=true
  }

  use {'kevinhwang91/rnvimr',
       cmd="RnvimrToggle"
  }

  use {'kdheepak/lazygit.nvim',cmd="LazyGit"}

  use("nathom/filetype.nvim")

  ------------
  --  repl  --
  ------------

  use {'untitled-ai/jupyter_ascending.vim',
        ft={'python','r'}
  }

  use {'adavidwilson/vim-slime',
        ft={'python','sh','r'}
  }
  use {
        'hanschen/vim-ipython-cell',
        ft={'python'},
        --[[ cmd={
            'IPythonCellExecuteCellVerboseJump',
            'IPythonCellPrevCell',
            'IPythonCellNextCell',
            'IPythonOpen',
            'IPythonCellInsertAbove',
            'IPythonCellInsertBelow'
        } ]]
  }

end,
config = {
  profile = {
    enable = true,
    threshold = 1 -- the amount in ms that a plugins load time must be over for it to be included in the profile
  }
}
}
)
