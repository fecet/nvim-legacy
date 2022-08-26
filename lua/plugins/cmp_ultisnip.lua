return function()
	local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")
	require("cmp_nvim_ultisnips").setup({})

	if not packer_plugins["nvim-cmp"].loaded then
		vim.cmd([[packadd nvim-cmp]])
	end
	local cmp = require("cmp")

	cmp.setup({
		-- You can set mappings if you want
		mapping = cmp.mapping.preset.insert({
			["<Tab>"] = cmp.mapping(function(fallback)
				-- cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
				cmp_ultisnips_mappings.compose({ "expand", "jump_forwards" })(fallback)
			end, {
				"i",
				"s", --[[ "c" (to enable the mapping in command mode) ]]
			}),
			["<S-Tab>"] = cmp.mapping(function(fallback)
				-- cmp_ultisnips_mappings.jump_backwards(fallback)
				cmp_ultisnips_mappings.compose({ "jump_backwards" })(fallback)
			end, {
				"i",
				"s", --[[ "c" (to enable the mapping in command mode) ]]
			}),
		}),
		sources = {
			{ name = "nvim_lsp" },
			{ name = "nvim_lua" },
			-- { name = "luasnip" },
			{ name = "ultisnips" },
			{ name = "path" },
			{ name = "cmp_tabnine" },
			{ name = "spell" },
			{ name = "tmux" },
			{ name = "orgmode" },
			{ name = "buffer" },
			{ name = "latex_symbols" },
		},
	})

	local g = vim.g

	g.UltiSnipsExpandTrigger = "<f20>"
	g.UltiSnipsJumpForwardTrigger = "<f21>"
	g.UltiSnipsJumpBackwardTrigger = "<s-f21>"
end
