vim.cmd [[packadd packer.nvim]]

local function use_packages(use)

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

    use {
        "rmagatti/auto-session",
        -- opt = true,
        -- cmd = {"SaveSession", "RestoreSession", "DeleteSession"},
        config = require("plugins.session")
    }

    use {'glepnir/dashboard-nvim',
        opt=true,
        event="BufWinEnter"
    }
    -- use {
    --     'goolord/alpha-nvim',
    --     config = require("plugins.alpha"),
    --     event="BufWinEnter"
    -- }

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
--
-- use {"folke/trouble.nvim",
--   opt = true,
--   cmd = {"Trouble", "TroubleToggle", "TroubleRefresh"},
--   -- config = require('plugins.trouble')
-- }

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

    use {"terrortylor/nvim-comment",
        opt = true,
        after="nvim-treesitter",
        config = require("plugins.comment")
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

    use {'rhysd/clever-f.vim',
        opt=true,
        event="BufRead"
    }

    use {
        "mizlan/iswap.nvim",
        cmd = {"ISwap", "ISwapWith"},
        config = require("plugins.iswap")
    }

    use {'kevinhwang91/nvim-hlslens',
        even="BufRead"
    }
-- use {'psliwka/vim-smoothie'}
-- use {
--     'karb94/neoscroll.nvim',
--      config=require('plugins.neoscroll'),
--      event={"BufRead"},
-- }

    use {
        "simrat39/symbols-outline.nvim",
        opt = true,
        cmd = {"SymbolsOutline", "SymbolsOutlineOpen"},
        config = require("plugins.symbol_outline")
    }

    ------------------
    --  treesitter  --
    ------------------


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

-- use {
--   "andymass/vim-matchup",
--   opt = true,
--   after = "nvim-treesitter",
--   config = function()
--            vim.cmd [[let g:matchup_matchparen_offscreen = {'method': 'popup'}]]
--       end
-- }

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

    ----------------
    --  nvim-lsp  --
    ----------------


    use {'neovim/nvim-lspconfig',
        opt = true,
        event = "BufReadPre",
    }

    use {'williamboman/nvim-lsp-installer',
        opt = true,
        after = "nvim-lspconfig",
        config=require('lsp.setup')
    }

    use {"ms-jpq/coq_nvim",
        opt = false,
        -- after = "nvim-lsp-installer",
        -- after = "nvim-treesitter",
        -- branch = "coq-marks-available",
        requires = {
            {"ms-jpq/coq.artifacts",
                branch = "artifacts",
            },
            {"ms-jpq/coq.thirdparty",
                branch = "3p",
                config=require("plugins.coq3p")
            }
        },
    }

    use {
        "brymer-meneses/grammar-guard.nvim",
        after = "nvim-lsp-installer"
    }

    use {
        "SirVer/ultisnips",
        requires = {"fecet/vim-snippets",opt= true},
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

    ----------------
    --  markdown  --
    ----------------

    use {'iamcco/markdown-preview.nvim',
        ft = {'markdown','rmd',},
        run = 'cd app && yarn install'
    }

    use {'ekickx/clipboard-image.nvim',
        cmd="PasteImg",
        config = require('plugins.clipimg')
    }
    -- use {'lervag/vimtex',
    --     opt=true,
    --     ft={'markdown','rmd','tex','latex',"tex.rmd"},
    -- }
    use {'vim-pandoc/vim-pandoc-syntax',
        ft={'markdown','rmd','tex'},
    }

    use {'vim-pandoc/vim-pandoc',
        ft={'markdown','rmd','tex'},
    }

    use {'vim-pandoc/vim-rmarkdown',
        ft={'rmd'},
    }


-- use {'vigoux/LanguageTool.nvim',
--       ft={'rmd',"markdown","tex"},
--       config = require('plugins.langtool'),
-- }

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


    use {
        "gelguy/wilder.nvim",
        event = "CmdlineEnter",
        config=require('plugins.wilder'),
        requires = {{"romgrk/fzy-lua-native", after = "wilder.nvim"}}
    }

    use {"edluffy/specs.nvim",
        opt = true,
        event = "CursorMoved",
        config = require('plugins.specs')
    }

    use {
        "itchyny/calendar.vim",
        opt=true,
        cmd={'Calendar'}
    }

    use {
        "rcarriga/nvim-notify",
        event="BufRead",
    }
    use {
        "stevearc/dressing.nvim",
        event="BufRead",
    }

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
    }

-----------------
--  lua-stuff  --
-----------------

    use{"nathom/filetype.nvim",opt=false}
-- Is using a standard Neovim install, i.e. built from source or using a
-- provided appimage.
    use 'lewis6991/impatient.nvim'

end

return require('packer').startup({
    use_packages,
    config = {
        profile = {
            enable = true,
            threshold = 1 -- the amount in ms that a plugins load time must be over for it to be included in the profile
        },
        compile_path = vim.fn.stdpath('config')..'/lua/packer_compiled.lua'
    }
})

