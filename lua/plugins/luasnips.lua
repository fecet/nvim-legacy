return function()
	local snippet_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/vim-snippets/snippets"
	-- require("luasnip.loaders.from_snipmate").lazy_load({ path = { snips_path } }) -- Load snippets from my-snippets folder
	-- If path is not specified, luasnip will look for the `snippets` directory in rtp (for custom-snippet probably
	-- `~/.config/nvim/snippets`).
	-- if not vim.tbl_contains(vim.opt.rtp:get(), snippet_path) then
	-- 	vim.opt.rtp:append(snippet_path)
	-- end

	require("luasnip").config.set_config({
		history = true,
		updateevents = "TextChanged,TextChangedI",
		delete_check_events = "TextChanged,InsertLeave",
		enable_autosnippets = true,
        store_selection_keys="<tab>"
	})
	require("luasnip.loaders.from_lua").lazy_load()
	require("luasnip.loaders.from_vscode").lazy_load()
	require("luasnip.loaders.from_snipmate").lazy_load({ { snippet_path } })

end
