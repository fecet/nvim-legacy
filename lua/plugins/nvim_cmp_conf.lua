return function()
	if not packer_plugins["nvim-cmp"].loaded then
		vim.cmd([[packadd nvim-cmp]])
	end
	-- vim.cmd [[packadd cmp-nvim-ultisnips]]

	local cmp = require("cmp")
	local luasnip = require("luasnip")
	-- local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")

	-- vim.cmd([[highlight CmpItemAbbrDeprecated guifg=#D8DEE9 guibg=NONE gui=strikethrough]])
	-- vim.cmd([[highlight CmpItemKindSnippet guifg=#BF616A guibg=NONE]])
	-- vim.cmd([[highlight CmpItemKindUnit guifg=#D08770 guibg=NONE]])
	-- vim.cmd([[highlight CmpItemKindProperty guifg=#A3BE8C guibg=NONE]])
	-- vim.cmd([[highlight CmpItemKindKeyword guifg=#EBCB8B guibg=NONE]])
	-- vim.cmd([[highlight CmpItemAbbrMatch guifg=#5E81AC guibg=NONE]])
	-- vim.cmd([[highlight CmpItemAbbrMatchFuzzy guifg=#5E81AC guibg=NONE]])
	-- vim.cmd([[highlight CmpItemKindVariable guifg=#8FBCBB guibg=NONE]])
	-- vim.cmd([[highlight CmpItemKindInterface guifg=#88C0D0 guibg=NONE]])
	-- vim.cmd([[highlight CmpItemKindText guifg=#81A1C1 guibg=NONE]])
	-- vim.cmd([[highlight CmpItemKindFunction guifg=#B48EAD guibg=NONE]])
	-- vim.cmd([[highlight CmpItemKindMethod guifg=#B48EAD guibg=NONE]])

	-- local t = function(str)
	-- 	return vim.api.nvim_replace_termcodes(str, true, true, true)
	-- end
	-- local has_words_before = function()
	-- 	local line, col = unpack(vim.api.nvim_win_get_cursor(0))
	-- 	return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
	-- end

	cmp.setup({
		sorting = {
			comparators = {
				cmp.config.compare.offset,
				cmp.config.compare.exact,
				cmp.config.compare.score,
				require("cmp-under-comparator").under,
				cmp.config.compare.kind,
				cmp.config.compare.sort_text,
				cmp.config.compare.length,
				cmp.config.compare.order,
			},
		},
		formatting = {
			format = function(entry, vim_item)
				local lspkind_icons = {
					Text = "",
					Method = "",
					Function = "",
					Constructor = "",
					Field = "",
					Variable = "",
					Class = "ﴯ",
					Interface = "",
					Module = "",
					Property = "ﰠ",
					Unit = "",
					Value = "",
					Enum = "",
					Keyword = "",
					Snippet = "",
					Color = "",
					File = "",
					Reference = "",
					Folder = "",
					EnumMember = "",
					Constant = "",
					Struct = "",
					Event = "",
					Operator = "",
					TypeParameter = "",
				}
				-- load lspkind icons
				vim_item.kind = string.format("%s %s", lspkind_icons[vim_item.kind], vim_item.kind)

				vim_item.menu = ({
					cmp_tabnine = "[TN]",
					buffer = "[BUF]",
					orgmode = "[ORG]",
					nvim_lsp = "[LSP]",
					nvim_lua = "[LUA]",
					path = "[PATH]",
					tmux = "[TMUX]",
					-- luasnip = "[SNIP]",
					spell = "[SPELL]",
				})[entry.source.name]

				return vim_item
			end,
		},
		-- You can set mappings if you want
		mapping = cmp.mapping.preset.insert({
			["<CR>"] = cmp.mapping.confirm({ select = true }),
			["<C-k>"] = cmp.mapping.select_prev_item(),
			["<C-j>"] = cmp.mapping.select_next_item(),

			-- ["<C-d>"] = cmp.mapping.scroll_docs(-4),
			-- ["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
			["<C-e>"] = cmp.mapping.close(),
			-- ["<Tab>"] = cmp.mapping(function(fallback)
			--     if cmp.visible() then
			--         cmp.select_next_item()
			--     elseif has_words_before() then
			--         cmp.complete()
			--     else
			--         fallback()
			--     end
			--     end, { "i", "s" }),
			-- ["<S-Tab>"] = cmp.mapping(function(fallback)
			--     if cmp.visible() then
			--         cmp.select_prev_item()
			--     else
			--         fallback()
			--     end
			--     end, { "i", "s" }),
			-- ["<C-h>"] = function(fallback)
			-- 	if require("luasnip").jumpable(-1) then
			-- 		vim.fn.feedkeys(t("<Plug>luasnip-jump-prev"), "")
			-- 	else
			-- 		fallback()
			-- 	end
			-- end,
			-- ["<C-l>"] = function(fallback)
			-- 	if require("luasnip").expand_or_jumpable() then
			-- 		vim.fn.feedkeys(t("<Plug>luasnip-expand-or-jump"), "")
			-- 	else
			-- 		fallback()
			-- 	end
			-- end,
			-- ["<Tab>"] = cmp.mapping(
			--     function(fallback)
			--         -- cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
			--         cmp_ultisnips_mappings.compose { "expand", "jump_forwards" }(fallback)
			--     end,
			--     { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
			-- ),
			-- ["<S-Tab>"] = cmp.mapping(
			--     function(fallback)
			--         -- cmp_ultisnips_mappings.jump_backwards(fallback)
			--         cmp_ultisnips_mappings.compose { "jump_backwards" }(fallback)
			--     end,
			--     { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
			["<Tab>"] = function(fallback)
				if cmp.visible() then
					cmp.select_next_item()
				elseif luasnip.expand_or_jumpable() then
					vim.fn.feedkeys(
						vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true),
						""
					)
				else
					fallback()
				end
			end,
			["<S-Tab>"] = function(fallback)
				if cmp.visible() then
					cmp.select_prev_item()
				elseif luasnip.jumpable(-1) then
					vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
				else
					fallback()
				end
			end, -- ),
		}),

		-- snippet = {
		-- 	expand = function(args)
		-- 		require("luasnip").lsp_expand(args.body)
		-- 	end,

		snippet = {
			expand = function(args)
				-- 	vim.fn["UltiSnips#Anon"](args.body)
				luasnip.lsp_expand(args.body)
			end,
		},

		-- },
		-- You should specify your *installed* sources.
		sources = {
			{ name = "nvim_lsp" },
			{ name = "nvim_lua" },
			{ name = "luasnip" },
			-- { name = "ultisnips" },
			{ name = "path" },
			{ name = "spell" },
			{ name = "tmux" },
			{ name = "orgmode" },
			{ name = "buffer" },
			{ name = "latex_symbols" },
			{ name = "cmp_tabnine" },
		},
	})

	cmp.setup.cmdline("/", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = { { name = "buffer" } },
	})
	cmp.setup.cmdline("?", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = { { name = "buffer" } },
	})
	cmp.setup.cmdline(":", {
		mapping = cmp.mapping.preset.cmdline(),
		sources = cmp.config.sources({ { name = "path" } }, { { name = "cmdline" } }),
	})
end
