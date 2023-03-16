vim.cmd([[packadd packer.nvim]])
local function use_packages(use)
	-- base plugin
	use({ "wbthomason/packer.nvim" })

	----------
	--  ui  --
	----------

	--[[ use {'glepnir/galaxyline.nvim', branch = 'main',
after = "nvim-web-devicons",
config = function() require('plugins.eviline') end
} ]]
	use({
		"SmiteshP/nvim-gps",
		opt = true,
		after = "nvim-treesitter",
		event = { "BufRead" },
		config = require("plugins.gps"),
	})
	use({
		"ThePrimeagen/refactoring.nvim",
		event = { "BufRead" },
		requires = {
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-treesitter/nvim-treesitter" },
		},
		config = require("plugins.refactoring"),
	})
	use({
		"arkav/lualine-lsp-progress",
		after = "nvim-gps",
	})
	use({
		"hoob3rt/lualine.nvim",
		after = "lualine-lsp-progress",
		config = function()
			require("plugins.lualine_conf")
		end,
	})

	use({
		"rmagatti/auto-session",
		opt = true,
		cmd = { "SaveSession", "RestoreSession", "DeleteSession" },
		config = require("plugins.session"),
	})

	-- use({ "glepnir/dashboard-nvim", opt = true, event = "BufWinEnter" })
	use({
		"glepnir/dashboard-nvim",
		event = "VimEnter",
		config = require("plugins.dashboard"),
		require = { { "nvim-tree/nvim-web-devicons" } },
	})
	-- use {
	--     'goolord/alpha-nvim',
	--     config = require("plugins.alpha"),
	--     event="BufWinEnter"
	-- }

	use({
		"akinsho/bufferline.nvim",
		-- tag = "v3.*",
		tag = "*",
		event = "BufWinEnter",
		config = require("plugins.bufferline"),
	})
	-- use 'folke/tokyonight.nvim'
	use({
		"kyazdani42/nvim-web-devicons",
		opt = false,
	})

	--colorschemes

	-- use({ "Mofiqul/dracula.nvim", opt = false, config = require("plugins.dracula") })

	-- use({ "shaunsingh/oxocarbon.nvim", run = "./install.sh" })

	use({ "folke/tokyonight.nvim" })

	-- use({ "tiagovla/tokyodark.nvim" })
	-- use({ "projekt0n/github-nvim-theme" })
	use({
		"catppuccin/nvim",
		as = "catppuccin",
		config = require("plugins.cat"),
	})

	use({
		"lewis6991/gitsigns.nvim",
		event = { "BufRead", "BufNewFile" },
		requires = { "nvim-lua/plenary.nvim", opt = true },
		config = require("plugins.gitsigns"),
	})

	use({
		"lukas-reineke/indent-blankline.nvim",
		opt = true,
		event = "BufRead",
		config = require("plugins.indent"),
	})

	------------
	--  edit  --
	------------
	--
	-- use {"folke/trouble.nvim",
	--   opt = true,
	--   cmd = {"Trouble", "TroubleToggle", "TroubleRefresh"},
	--   -- config = require('plugins.trouble')
	-- }

	use({
		"phaazon/hop.nvim",
		as = "hop",
		config = function()
			require("hop").setup()
		end,
		cmd = {
			"HopWord",
			"HopLine",
			"HopChar1",
			"HopChar2",
			"HopPattern",
			"HopLineStart",
			"HopAnywhere",
		},
	})

	use({
		"terrortylor/nvim-comment",
		opt = true,
		after = "nvim-treesitter",
		config = require("plugins.comment"),
	})

	use({ "gcmt/wildfire.vim", event = { "BufRead" } })
	use({
		"ur4ltz/surround.nvim",
		event = { "BufRead" },
		config = function()
			require("surround").setup({
				mappings_style = "sandwich",
			})
		end,
	})

	use({
		"abecodes/tabout.nvim",
		-- event={"InsertEnter"},
		config = require("plugins.tabout"),
		after = "nvim-treesitter",
	})

	use({ "rhysd/clever-f.vim", opt = true, event = "BufRead" })

	use({
		"mizlan/iswap.nvim",
		cmd = { "ISwap", "ISwapWith" },
		config = require("plugins.iswap"),
	})

	use({
		"kevinhwang91/nvim-hlslens",
		event = "BufRead",
		config = function()
			require("hlslens").setup()
		end,
	})
	-- use {'psliwka/vim-smoothie'}
	-- use {
	--     'karb94/neoscroll.nvim',
	--      config=require('plugins.neoscroll'),
	--      event={"BufRead"},
	-- }

	use({
		"simrat39/symbols-outline.nvim",
		opt = true,
		cmd = { "SymbolsOutline", "SymbolsOutlineOpen" },
		config = require("plugins.symbol_outline"),
	})

	------------------
	--  treesitter  --
	------------------

	use({
		"nvim-treesitter/nvim-treesitter",
		opt = true,
		run = ":TSUpdate",
		-- after="nvim-lsp-installer",
		event = { "BufReadPost" },
		-- event="VimEnter",
		config = function()
			require("plugins.treesitter")
		end,
		-- setup = function() require('plugins.treesitter') end,
	})

	use({ "p00f/nvim-ts-rainbow", opt = true, after = "nvim-treesitter" })

	use({ "nvim-treesitter/nvim-treesitter-textobjects", opt = true, after = "nvim-treesitter" })

	use({ "romgrk/nvim-treesitter-context", opt = true, after = "nvim-treesitter" })

	use({ "JoosepAlviste/nvim-ts-context-commentstring", opt = true, after = "nvim-treesitter" })

	use({ "mfussenegger/nvim-ts-hint-textobject", opt = true, after = "nvim-treesitter" })

	-- use {
	--   "andymass/vim-matchup",
	--   opt = true,
	--   after = "nvim-treesitter",
	--   config = function()
	--            vim.cmd [[let g:matchup_matchparen_offscreen = {'method': 'popup'}]]
	--       end
	-- }

	use({ "Pocco81/AutoSave.nvim", config = require("plugins.autosave"), event = "BufReadPre" })

	-- use({
	-- 	"kevinhwang91/nvim-fundo",
	-- 	requires = "kevinhwang91/promise-async",
	-- 	run = function()
	-- 		require("fundo").install()
	-- 	end,
	-- 	config = function()
	-- 		vim.o.undofile = true
	-- 		require("fundo").setup()
	-- 	end,
	-- 	event = "BufRead",
	-- })

	use({
		"norcalli/nvim-colorizer.lua",
		opt = true,
		config = function()
			require("colorizer").setup()
		end,
		event = "BufRead",
	})

	-- use({
	--     "windwp/nvim-autopairs",
	--     -- event = "InsertEnter",
	--     config = require("plugins.autopairs"),
	--     after = "nvim-cmp",
	-- })
	--
	use({
		"m4xshen/autoclose.nvim",
		event = "InsertEnter",
		config = function()
			require("autoclose").setup({})
		end,
	})

	-- use({
	-- 	"zbirenbaum/copilot.lua",
	-- 	event = "VimEnter",
	-- 	config = function()
	-- 		vim.defer_fn(function()
	-- 			require("copilot").setup()
	-- 		end, 100)
	-- 	end,
	-- })

	use({
		"zbirenbaum/copilot.lua",
		event = "InsertEnter",
		config = require("plugins.copilot"),
	})

	use({
		"zbirenbaum/copilot-cmp",
		after = "copilot.lua",
		config = function()
			require("copilot_cmp").setup({
				-- method = "getPanelCompletions",
				formatters = {
					label = require("copilot_cmp.format").format_label_text,
					-- insert_text = require("copilot_cmp.format").remove_existing,
					insert_text = require("copilot_cmp.format").format_insert_text,
					preview = require("copilot_cmp.format").deindent,
				},
			})
		end,
	})

	----------------
	--  nvim-lsp  --
	----------------
	--
	use({
		"dnlhc/glance.nvim",
		config = require("plugins.glance"),
	})

	use({
		"neovim/nvim-lspconfig",
		opt = true,
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("lsp.setup")
		end,
	})

	use({
		"williamboman/mason.nvim",
		requires = {
			{ "williamboman/mason-lspconfig.nvim" },
			{
				"WhoIsSethDaniel/mason-tool-installer.nvim",
				config = function()
					require("lsp.mason")
				end,
			},
		},
	})

	use({
		"creativenull/efmls-configs-nvim",
		opt = false,
		tag = "v0.1.2", -- tag is optional
	})

	use({
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		requires = {
			{ "onsails/lspkind.nvim" },
			{ "lukas-reineke/cmp-under-comparator" },
			{ "saadparwaiz1/cmp_luasnip", after = "LuaSnip" },
			{ "hrsh7th/cmp-nvim-lsp", after = "nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lua", after = "cmp-nvim-lsp" },
			{ "andersevenrud/cmp-tmux", after = "cmp-nvim-lua" },
			{ "hrsh7th/cmp-path", after = "cmp-tmux" },
			{ "f3fora/cmp-spell", after = "cmp-path" },
			{ "hrsh7th/cmp-buffer", after = "cmp-spell" },
			{ "kdheepak/cmp-latex-symbols", after = "cmp-buffer" },
			{ "hrsh7th/cmp-cmdline", after = "cmp-buffer" },
			-- {
			-- 	"tzachar/cmp-tabnine",
			-- 	run = "./install.sh",
			-- 	after = "cmp-spell",
			-- 	config = require("plugins.tabnine"),
			-- },
		},
		config = require("plugins.nvim_cmp_conf"),
	})

	-- use({
	-- 	"quangnguyen30192/cmp-nvim-ultisnips",
	-- 	-- event = "InsertEnter",
	-- 	-- after = { "nvim-cmp", "ultisnips" },
	-- 	ft = { "python", "lua", "sh" },
	-- 	config = require("plugins.cmp_ultisnip"),
	-- })
	--
	-- use({
	-- 	"SirVer/ultisnips",
	-- 	requires = { "fecet/vim-snippets" },
	-- 	event = { "InsertEnter" },
	-- 	-- after={"nvim-cmp"}
	-- })
	--
	use({ "fecet/vim-snippets" })
	use({
		"L3MON4D3/LuaSnip",
		tag = "v<CurrentMajor>.*",
		after = "nvim-cmp",
		config = require("plugins.luasnips"),
		-- requires = "rafamadriz/friendly-snippets",
	})

	use({
		"fecet/luasnips-mathtex-snippets",
		config = function()
			-- vim.cmd([[packadd vimtex]])
			vim.cmd([[packadd vim-markdown]])
			if not packer_plugins["LuaSnip"].loaded then
				vim.cmd([[packadd LuaSnip]])
			end
			require("luasnip-latex-snippets").setup({ use_treesitter = true })
		end,
		ft = { "tex", "markdown", "rmd", "qmd" },
		requires = { "L3MON4D3/LuaSnip" },
	})

	use({
		"preservim/vim-markdown",
		-- opt = true,
		-- ft = "markdown",
		ft = { "tex", "markdown", "rmd", "qmd" },
		config = function()
			vim.cmd([[let g:vim_markdown_math = 1]])
		end,
	})

	---- git

	use({
		"nvim-telescope/telescope.nvim",
		cmd = "Telescope",
		requires = {
			{ "nvim-lua/popup.nvim", opt = true },
			{ "nvim-lua/plenary.nvim", opt = true },
			{ "nvim-telescope/telescope-fzy-native.nvim", opt = true },
			{ "nvim-telescope/telescope-file-browser.nvim", opt = true },
			{ "debugloop/telescope-undo.nvim", opt = true },
		},
		config = require("plugins.telescope"),
	})

	use({ "ahmedkhalf/project.nvim", config = require("plugins.project"), after = "telescope.nvim" })

	----------------
	--  markdown  --
	----------------

	use({ "iamcco/markdown-preview.nvim", ft = { "markdown", "rmd", "qmd" }, run = "cd app && yarn install" })

	use({ "ekickx/clipboard-image.nvim", cmd = "PasteImg", config = require("plugins.clipimg") })

	-- use({ "lervag/vimtex", opt = true, ft = { "markdown", "rmd", "tex", "latex", "tex.rmd" } })

	-- use({ "vim-pandoc/vim-pandoc-syntax", ft = { "rmd", "tex", "pandoc", "markdown" } })
	--
	-- use({ "vim-pandoc/vim-pandoc", ft = { "rmd", "tex", "pandoc", "markdown" } })
	--
	-- use({ "vim-pandoc/vim-rmarkdown", ft = { "rmd" } })

	-- use {'vigoux/LanguageTool.nvim',
	--       ft={'rmd',"markdown","tex"},
	--       config = require('plugins.langtool'),
	-- }

	-------------
	--  tools  --
	-------------

	use({ "lambdalisue/suda.vim", cmd = { "SudaRead", "SudaWrite" } })

	-- use({
	-- 	"glacambre/firenvim",
	-- 	run = function()
	-- 		vim.fn["firenvim#install"](0)
	-- 	end,
	-- })

	use({
		"andweeb/presence.nvim",
		config = require("plugins.presence"),
		event = "BufReadPost",
	})

	use({
		"dstein64/vim-startuptime",
		cmd = "StartupTime",
		opt = true,
	})

	use({ "kevinhwang91/rnvimr", cmd = "RnvimrToggle" })

	use({ "kdheepak/lazygit.nvim", cmd = "LazyGit" })

	use({
		"gelguy/wilder.nvim",
		event = "CmdlineEnter",
		config = require("plugins.wilder"),
		requires = { { "romgrk/fzy-lua-native", after = "wilder.nvim" } },
	})

	use({
		"edluffy/specs.nvim",
		opt = true,
		event = "CursorMoved",
		config = require("plugins.specs"),
	})

	use({
		"itchyny/calendar.vim",
		opt = true,
		cmd = { "Calendar" },
	})

	use({
		"rcarriga/nvim-notify",
		event = "BufRead",
	})

	use({
		"stevearc/dressing.nvim",
		event = "BufRead",
	})

	------------
	--  repl  --
	------------

	use({ "untitled-ai/jupyter_ascending.vim", ft = { "python", "r" } })
	--
	-- -- use({ "adavidwilson/vim-slime", ft = { "python", "r" } })
	-- --
	-- -- use({ "Klafyvel/vim-slime-cells", ft = { "python", "r" } })
	-- --
	-- use({
	-- 	"hanschen/vim-ipython-cell",
	-- 	ft = { "python" },
	-- })

	use({
		"kiyoon/jupynium.nvim",
		-- run = "pip3 install --user .",
		config = require("plugins.jupynium"),
		event = "BufRead",
	})

	-----------------
	--  lua-stuff  --
	-----------------

	use({ "nathom/filetype.nvim" })
	-- Is using a standard Neovim install, i.e. built from source or using a
	-- provided appimage.
	use("lewis6991/impatient.nvim")

	use({
		"h-hg/fcitx.nvim",
		event = { "InsertEnter" },
	})

	use({ "kmonad/kmonad-vim", ft = { "kbd" } })

	-- use({
	-- 	"quarto-dev/quarto-nvim",
	-- 	requires = { "neovim/nvim-lspconfig", "jmbuhr/otter.nvim" },
	-- })

	-- use({
	-- 	"chipsenkbeil/distant.nvim",
	-- 	config = function()
	-- 		require("distant").setup({
	-- 			-- Applies Chip's personal settings to every machine you connect to
	-- 			--
	-- 			-- 1. Ensures that distant servers terminate with no connections
	-- 			-- 2. Provides navigation bindings for remote directories
	-- 			-- 3. Provides keybinding to jump into a remote file's parent directory
	-- 			["*"] = vim.tbl_deep_extend("force", require("distant.settings").chip_default(), {
	-- 				mode = "ssh",
	-- 			}),
	-- 		})
	-- 	end,
	-- })

	-- math
	--
	use({
		"Julian/lean.nvim",
		event = { "BufRead" },
		-- ft = { "lean", "lean3" },
		-- config = require("plugins.lean"),
	})
	use({ "nvim-lua/plenary.nvim" })
	use({ "sakhnik/nvim-gdb", run = "./install.sh", event = "BufRead" })
	use({ "yamatsum/nvim-cursorline", config = require("plugins.cursorline"), event = "BufRead" })
	use({
		"tamton-aquib/duck.nvim",
		config = function()
			vim.keymap.set("n", "<leader>dd", function()
				require("duck").hatch()
			end, {})
			vim.keymap.set("n", "<leader>dk", function()
				require("duck").cook()
			end, {})
		end,
		event = "BufRead",
	})
end

return require("packer").startup({
	use_packages,
	config = {
		profile = {
			enable = true,
			threshold = 1,
			-- the amount in ms that a plugins load time must be over for it to be included in the profile
		},
		compile_path = vim.fn.stdpath("config") .. "/lua/packer_compiled.lua",
	},
})
