local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
-- parser_config.markdown.filetype = { "rmd","markdown","pandoc" }
-- parser_config.markdown = {
--     install_info = {
--         url = 'https://github.com/MDeiml/tree-sitter-markdown',
--         branch = 'main',
--         files = { 'src/parser.c', 'src/scanner.cc' },
--     },
--     filetype = 'markdown',
--     filetype_to_parsername = {"rmd"}
-- }
--
--
-- -- parser_config.latex.filetype="rmd"
-- parser_config.latex.filetype_to_parsername={"rmd","markdown","pandoc","tex","latex"}

function _G.current_treesitter_lang()
	local parser = require("vim.treesitter.highlighter").active[vim.api.nvim_get_current_buf()]
	if parser then
        local cur_lang=parser.tree:lang()
        print(cur_lang)
        return cur_lang
	end
end

vim.cmd("set foldmethod=expr")
vim.cmd("set foldexpr=nvim_treesitter#foldexpr()")

require("nvim-treesitter.configs").setup({
	ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	ignore_install = {}, -- List of parsers to ignore installing
	indent = {
		enable = true,
		-- enable = false,
		disable = { "python" },
	},
	highlight = {
		enable = true, -- false will disable the whole extension
		use_languagetree = true,
		disable = { "markdown" },
	},
	rainbow = {
		enable = true,
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than 1000 lines, int
		colors = {
			"#8be9fd",
			"#50fa7b",
			"#ffb86c",
			"#ff79c6",
			"#bd93f9",
		}, -- table of hex strings
	},
	context_commentstring = {
		enable = true,
		enable_autocmd = false,
		config = {
			markdown = "<!-- %s -->",
		},
	},
	-- matchup = {enable = true},
	context = { enable = true, throttle = true },
	textobjects = {
		select = {
			enable = true,
			-- Automatically jump forward to textobj, similar to targets.vim
			lookahead = true,
			keymaps = {
				-- You can use the capture groups defined in textobjects.scm
				["af"] = "@function.outer",
				["if"] = "@function.inner",
				["ac"] = "@class.outer",
				["ic"] = "@class.inner",
			},
		},
		move = {
			enable = true,
			set_jumps = true, -- whether to set jumps in the jumplist
			goto_next_start = {
				["]["] = "@function.outer",
				["]m"] = "@class.outer",
			},
			goto_next_end = {
				["]]"] = "@function.outer",
				["]M"] = "@class.outer",
			},
			goto_previous_start = {
				["[["] = "@function.outer",
				["[m"] = "@class.outer",
			},
			goto_previous_end = {
				["[]"] = "@function.outer",
				["[M"] = "@class.outer",
			},
		},
	},
})

local ts_repeat_move = require "nvim-treesitter.textobjects.repeatable_move"

-- Repeat movement with ; and ,
-- ensure ; goes forward and , goes backward regardless of the last direction
vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move_next)
vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_previous)

-- vim way: ; goes to the direction you were moving.
-- vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
-- vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)

-- Optionally, make builtin f, F, t, T also repeatable with ; and ,
vim.keymap.set({ "n", "x", "o" }, "f", ts_repeat_move.builtin_f)
vim.keymap.set({ "n", "x", "o" }, "F", ts_repeat_move.builtin_F)
vim.keymap.set({ "n", "x", "o" }, "t", ts_repeat_move.builtin_t)
vim.keymap.set({ "n", "x", "o" }, "T", ts_repeat_move.builtin_T)
