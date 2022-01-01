vim.cmd [[packadd packer.nvim]]

return require('packer').startup({
  function(use)
  -- base plugin
  use {'wbthomason/packer.nvim'}
  -- use {'nvim-lua/plenary.nvim'}
  -- use {'nvim-lua/popup.nvim'}
  --autosave
  --[[ use {"Pocco81/AutoSave.nvim",
        config= require('plugins.autosave'),
        event='BufReadPre',
    } ]]

  --
  -- use 'folke/tokyonight.nvim'
  --[[ use {
      'kyazdani42/nvim-web-devicons',
      opt=false,
  } ]]
  use {'Mofiqul/dracula.nvim',
      opt=false,
      config = require('plugins.colorscheme')
    }

  --[[ use {'glepnir/galaxyline.nvim', branch = 'main',
      after = "nvim-web-devicons",
      config = function() require('plugins.eviline') end
  } ]]

  --[[ use {'lewis6991/gitsigns.nvim',
      event = {"BufRead", "BufNewFile"},
      requires = {
      "nvim-lua/plenary.nvim",opt = true
        },
      config = require('plugins.gitsigns')
      } ]]

  --[[ use {'glepnir/dashboard-nvim',
      opt=true,
      event="BufWinEnter"
    }
  use {'akinsho/nvim-bufferline.lua',
      opt=true,
      event="BufRead",
      -- after = "nvim-web-devicons",
      config = require('plugins.bufferline')
  } ]]

  --[[ use {
      'lukas-reineke/indent-blankline.nvim',
       event={ "BufReadPost","BufNewFile" },
       config=require('plugins.indent'),
    } ]]
  --use {'tjdevries/colorbuddy.vim'}
  --use {'Th3Whit3Wolf/onebuddy'}
  --[[ use {'norcalli/nvim-colorizer.lua',
      config = function() require('colorizer').setup() end,
      event="BufRead",
      ft = {
          "html",
          "css",
          "sass",
          "scss",
          "vim",
          "javascript",
          "javascriptreact",
          "typescript",
          "typescriptreact",
          "vue",
          "lua",
          "cpp"
        }
  } ]]

  use {'nvim-treesitter/nvim-treesitter',
        opt = false,
        run = ':TSUpdate',
        -- after="nvim-lsp-installer",
        -- event = {"BufReadPre"},
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

  --[[ use {'godlygeek/tabular',
        ft={'markdown','rmd','tex'},
  }
  use {'plasticboy/vim-markdown',
        ft={'markdown','rmd','tex'},
  } ]]
  --use {'npxbr/glow.nvim', run = ':GlowInstall'}
  ---- lsp auto completion & snip
  use({
    "SirVer/ultisnips",
    requires = "fecet/vim-snippets",
    event={"InsertEnter"},
  })
  --use {'rafamadriz/friendly-snippets'}
  --[[ use {'neoclide/coc.nvim', 
        branch = 'release',
    } ]]
  --use {'hrsh7th/vim-vsnip'}
  --use {'hrsh7th/vim-vsnip-integ'}
  --use {'hrsh7th/cmp-vsnip'}
  --use {'hrsh7th/cmp-buffer'}
  --use {'hrsh7th/cmp-nvim-lsp'}
  --use {'hrsh7th/cmp-path'}
  --use {'f3fora/cmp-spell'}
  --use {'octaltree/cmp-look'}
  --use {'tzachar/cmp-tabnine', run='./install.sh'}
  --use {'kristijanhusak/vim-dadbod-completion'}
  --use {'hrsh7th/nvim-cmp', config = require('plugins.cmp')}
  ---- use neovim in browser
  ---- discord
  ---- which kef
  --use {'folke/which-key.nvim', config = require('plugins.which-key')}
  -- indent
  -- run cell

-- sudo
  use {'lambdalisue/suda.vim',
        cmd={'SudaRead','SudaWrite'}
        }

  -- Faster startup
  use("nathom/filetype.nvim")
  use {'neovim/nvim-lspconfig',
        opt = true,
        event = "BufReadPre",
    }
  use {'williamboman/nvim-lsp-installer',
        opt = true,
        after = "nvim-lspconfig"
    }

  use {"zeertzjq/coq_nvim",
    opt = true,
    after = "nvim-lsp-installer",
    -- after = "nvim-treesitter",
    branch = "coq-marks-available",
    requires = {
        {"ms-jpq/coq.artifacts", branch = "artifacts"},
        {"ms-jpq/coq.thirdparty", branch = "3p"}
    },
    config=require('lsp.setup')
    }

  use {'windwp/nvim-autopairs',
    config = require('plugins.autopairs'),
    after = "coq_nvim",
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

