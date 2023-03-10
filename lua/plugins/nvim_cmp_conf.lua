return function()
	if not packer_plugins["nvim-cmp"].loaded then
		vim.cmd([[packadd nvim-cmp]])
	end
	local icons = {
		kind = require("plugins.icons").get("kind", false),
		type = require("plugins.icons").get("type", false),
		cmp = require("plugins.icons").get("cmp", false),
	}
	-- vim.cmd [[packadd cmp-nvim-ultisnips]]
	local lspkind = require("lspkind")
	local cmp = require("cmp")
	local border = function(hl)
		return {
			{ "┌", hl },
			{ "─", hl },
			{ "┐", hl },
			{ "│", hl },
			{ "┘", hl },
			{ "─", hl },
			{ "└", hl },
			{ "│", hl },
		}
	end

	cmp.setup({
		window = {
			completion = {
				winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
				col_offset = -3,
				side_padding = 0,
			},
			documentation = {
				border = border("CmpDocBorder"),
			},
		},
		sorting = {
			priority_weight = 2,
			comparators = {
				require("copilot_cmp.comparators").prioritize,
				require("copilot_cmp.comparators").score,
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
			fields = { "kind", "abbr", "menu" },
			format = function(entry, vim_item)
				local kind = lspkind.cmp_format({
					mode = "symbol_text",
					maxwidth = 50,
					symbol_map = vim.tbl_deep_extend("force", icons.kind, icons.type, icons.cmp),
				})(entry, vim_item)
				local strings = vim.split(kind.kind, "%s", { trimempty = true })
				kind.kind = " " .. strings[1] .. " "
				kind.menu = "    (" .. strings[2] .. ")"
				return kind
			end,
		}, -- },
		-- You can set mappings if you want
		mapping = cmp.mapping.preset.insert({
			-- ["<CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
			["<CR>"] = cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Replace }),
			-- ["<CR>"] = cmp.mapping(function(fallback)
			-- 	if cmp.visible() then
			-- 		cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
			-- 	elseif require("copilot.suggestion").is_visible() then
			-- 		require("copilot.suggestion").accept()
			-- 	else
			-- 		fallback()
			-- 	end
			-- end, { "i","s" }),

			["<C-k>"] = cmp.mapping.select_prev_item(),
			["<C-j>"] = cmp.mapping.select_next_item(),

			-- ["<C-d>"] = cmp.mapping.scroll_docs(-4),
			-- ["<C-f>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
			["<C-e>"] = cmp.mapping(function()
				if cmp.visible() then
					cmp.close()
				else
					cmp.complete()
				end
			end, { "i", "s" }),
			["<Tab>"] = cmp.mapping(function(fallback)
				-- if cmp.visible() then
				-- 	cmp.select_next_item()
				if require("luasnip").expand_or_jumpable() then
					vim.fn.feedkeys(
						vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true),
						""
					)
				elseif require("copilot.suggestion").is_visible() then
					require("copilot.suggestion").accept()
				else
					fallback()
				end
			end, { "i", "s" }),
			["<S-Tab>"] = cmp.mapping(function(fallback)
				if require("luasnip").jumpable(-1) then
					vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
				else
					fallback()
				end
			end, { "i", "s" }),
		}),

		snippet = {
			expand = function(args)
				-- 	vim.fn["UltiSnips#Anon"](args.body)
				require("luasnip").lsp_expand(args.body)
			end,
		},

		-- },
		-- You should specify your *installed* sources.
		sources = {
			{ name = "luasnip" },
			{ name = "copilot" },
			{ name = "jupynium"},
			{ name = "nvim_lsp" },
			{ name = "nvim_lua" },
			-- { name = "ultisnips" },
			{ name = "path" },
			{ name = "spell" },
			{ name = "tmux" },
			-- { name = "orgmode" },
			{ name = "buffer" },
			{ name = "latex_symbols" },
			-- { name = "cmp_tabnine" },
		},
		completion = {
			completeopt = "menu,menuone,noinsert",
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
