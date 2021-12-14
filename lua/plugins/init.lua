vim.cmd [[packadd packer.nvim]]

return require('packer').startup({ 
  function(use)
  -- base plugin
  use {'wbthomason/packer.nvim',
        event="VimEnter"
  }
  -- use {'nvim-lua/plenary.nvim'}
  -- use {'nvim-lua/popup.nvim'}
  --autosave
  use {"Pocco81/AutoSave.nvim", 
        config= require('plugins.autosave'),
        event='BufRead',
    }

  use {
      'rmagatti/auto-session',
      config= require('plugins.session')
  }

  use {
      'rmagatti/session-lens',
      requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
      config=require('plugins.sess-len'),
      after='telescope.nvim'
  }
  ---- theme and color
  --
  -- use 'folke/tokyonight.nvim'
  use {'Mofiqul/dracula.nvim', 
        after = "packer.nvim",
        -- as='dracula',
        -- after='packer.nvim',
        config = function ()
          vim.cmd('colorscheme dracula')
          vim.cmd('hi Visual guibg=#8be9fd')
          vim.cmd('hi IndentBlanklineChar guifg=#444d56 gui=nocombine')
          vim.cmd('hi IndentBlanklineSpaceChar guifg=#444d56 gui=nocombine')
          vim.cmd('hi link GitSignsCurrentLineBlame Comment')
          -- vim.cmd('hi Conceal ctermfg=NONE guifg=#f8f8f2 ctermbg=NONE guibg=#f8f8f2')
          -- vim.cmd('hi link Conceal Visual')
          --[[ vim.cmd('hi link IndentBlanklineChar Conceal')
          vim.cmd('hi link IndentBlanklineSpaceChar Conceal') ]]
        end

    }
  --use {'tjdevries/colorbuddy.vim'}
  --use {'Th3Whit3Wolf/onebuddy'}
  use {'norcalli/nvim-colorizer.lua', 
      config = function() require('colorizer').setup() end,
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
  }
  --Startup
  use {'glepnir/dashboard-nvim'}
  --use {'henriquehbr/nvim-startup.lua', config=function() require('nvim-startup').setup() end}
  use {
      'dstein64/vim-startuptime',
      cmd="StartupTime",
      opt=true
  }

  ---- File Explorer
  use {'kevinhwang91/rnvimr',
       cmd="RnvimrToggle"
  }
  ---- use {'kyazdani42/nvim-tree.lua'}
  ---- buffer | statusline | icon | treeview | startup buffer
  use {
      'kyazdani42/nvim-web-devicons',
      after = "dracula.nvim",
  }
  use {'akinsho/nvim-bufferline.lua', 
      after = "nvim-web-devicons",
      config = require('plugins.bufferline')
  }
  use {'glepnir/galaxyline.nvim', branch = 'main', 
      after = "nvim-web-devicons",
      config = function() require('plugins.eviline') end
  }
  ---- treesitter and treesitter base plug
  use {'nvim-treesitter/nvim-treesitter', 
        -- run = ':TSUpdate', 
        event={"BufRead"},
        config = require('plugins.treesitter'),
        --[[ requires={
            {'p00f/nvim-ts-rainbow',after='nvim-treesitter'},
            -- {'nvim-treesitter/nvim-treesitter-textobjects',after='nvim-treesitter'},
            -- {'nvim-treesitter/nvim-treesitter-refactor',after='nvim-treesitter'}
        }, ]]
    }
  use {'p00f/nvim-ts-rainbow',
        after="nvim-treesitter",
  }
  --[[ use {'lewis6991/spellsitter.nvim', 
        config = function()
            require('spellsitter').setup{
                  enable = true,
                  -- Highlight to use for bad spellings
                  hl = 'SpellBad',
                  -- Spellchecker to use. values:
                  -- * vimfn: built-in spell checker using vim.fn.spellbadword()
                  -- * ffi: built-in spell checker using the FFI to access the
                  spellchecker = 'vimfn',
                }
        end
    } ]]
  ---- git
  use {'lewis6991/gitsigns.nvim', 
      -- event = {"BufRead", "BufNewFile"},
      requires = {
      "nvim-lua/plenary.nvim",opt = true
    },
      config = require('plugins.gitsigns')
  }
  use {'kdheepak/lazygit.nvim',cmd="LazyGit"}
  --use {'sindrets/diffview.nvim', config = require('plugins.diffview')}
  ---- translator
  --use {'voldikss/vim-translator'}
  ---- toggle tansparent
  --use {'xiyaowong/nvim-transparent'}
  -- comment
  use {'b3nj5m1n/kommentary',
        event={"BufRead"},
  }
  --use {'folke/todo-comments.nvim', config = function() require('todo-comments').setup() end}
  ---- highlight different word at same time
  --use {'lfv89/vim-interestingwords'}
  ---- db manage
  --use {'tpope/vim-dadbod'}
  --use {'kristijanhusak/vim-dadbod-ui'}
  ---- incsearch
  use {'kevinhwang91/nvim-hlslens',
        event={"BufRead"},
  }
  ---- terminal
  --use {'akinsho/nvim-toggleterm.lua', config = require('plugins.toggleterm')}
  ---- editing
  --use {'tpope/vim-surround'}
  use {'gibiansky/vim-latex-objects'}
  use {'gcmt/wildfire.vim',
        event={"BufRead"},
  }
  -- use {'machakann/vim-sandwich'}
  --
  use {
      "blackCauldron7/surround.nvim",
      event={"BufRead"},
      config = function()
        require"surround".setup {
            mappings_style = "sandwich"
        }
      end
  }
  use {'windwp/nvim-autopairs', 
    config = require('plugins.autopairs'),
    event={"InsertEnter"},
  }
  -- Lua
  use {
  'abecodes/tabout.nvim',
  -- event={"InsertEnter"},
  config = function()
    require('tabout').setup {
    tabkey = '<Tab>', -- key to trigger tabout, set to an empty string to disable
    backwards_tabkey = '<S-Tab>', -- key to trigger backwards tabout, set to an empty string to disable
    act_as_tab = true, -- shift content if tab out is not possible
    act_as_shift_tab = true, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
    enable_backwards = true, -- well ...
    completion = true, -- if the tabkey is used in a completion pum
    tabouts = {
      {open = "'", close = "'"},
      {open = '"', close = '"'},
      {open = '`', close = '`'},
      {open = '(', close = ')'},
      {open = '[', close = ']'},
      {open = '{', close = '}'}
    },
    ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
    exclude = {} -- tabout will ignore these filetypes
  }
  end,
  after = {'nvim-treesitter'}, -- or require if not used so far
	-- after = {'completion-nvim'} -- if a completion plugin is using tabs load it before
  }
  --use {'itchyny/vim-cursorword'}
  --use {'windwp/nvim-ts-autotag'}
  --use {'andymass/vim-matchup'}
  ---- batter quickfix window
  --use {'kevinhwang91/nvim-bqf'}
  ---- powerful replace tool
  --use {'windwp/nvim-spectre'}
  ---- fuzzy finder
  use {
      'sudormrfbin/cheatsheet.nvim',
      cmd={"Cheatsheet","CheatsheetEdit"}
  }
  --use {'Shatur/neovim-session-manager'}
  --use {'nvim-telescope/telescope-dap.nvim'}
  use {'nvim-telescope/telescope.nvim', 
    cmd = "Telescope",
    requires = {
    {'nvim-lua/popup.nvim', opt = true},
    {'nvim-lua/plenary.nvim',opt = true},
    -- {'nvim-telescope/telescope-fzy-native.nvim',},
    -- {'fannheyward/telescope-coc.nvim',},
    -- {'nvim-telescope/telescope-hop.nvim',},
    -- {'nvim-telescope/telescope-fzf-writer.nvim',opt=true},
    },
    config = require('plugins.telescope')
    }

  ---- motion
  use {'phaazon/hop.nvim', 
        as = 'hop', 
        config = function() require('hop').setup() end,
        cmd = {
                 "HopWord",
                 "HopLine",
                 "HopChar1",
                 "HopChar2",
                 "HopPattern",
              },
        }
  use {'rhysd/clever-f.vim'}
  -- use {'psliwka/vim-smoothie'}
  use {
      'karb94/neoscroll.nvim', 
       config=require('plugins.neoscroll'),
       event={"BufRead"},
  }
  --[[ use {
      'Xuyuanp/scrollbar.nvim'
  } ]]

  ---- rest client
  --use {'NTBBloodbath/rest.nvim', config = function() require('rest-nvim').setup() end}
  ---- project manager
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
  --use {'ray-x/cmp-treesitter'}
  --use {'tzachar/cmp-tabnine', run='./install.sh'}
  --use {'kristijanhusak/vim-dadbod-completion'}
  --use {'hrsh7th/nvim-cmp', config = require('plugins.cmp')}
  ---- use neovim in browser
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }
  ---- discord
  use {
      'andweeb/presence.nvim', 
      config=require('plugins.presence'),
      event="BufReadPost"
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
  --[[ use {
      'glepnir/indent-guides.nvim', 
       config=require('plugins.indent'),
       event={ "BufReadPost","BufNewFile" }
   } ]]
  use {
      'lukas-reineke/indent-blankline.nvim',
       event={ "BufReadPost","BufNewFile" },
       config=require('plugins.indent'),
        }
  -- run cell
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
  --[[ use {'bfredl/nvim-ipy',
        ft={'python','sh','r'}
    } ]]

-- sudo
  use {'lambdalisue/suda.vim',
       cmd={'SudaRead','SudaWrite'}
  }

  -- Faster startup
  use("nathom/filetype.nvim")
  use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}

  use {"ms-jpq/coq_nvim",
    -- opt = true,
    after = "nvim-lspconfig",
    branch = "coq",
    requires = {
        {"ms-jpq/coq.artifacts", branch = "artifacts"},
        {"ms-jpq/coq.thirdparty", branch = "3p"}
    }
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

