return function()
	require("glance").setup({
		-- your configuration
		--
	})
	vim.keymap.set("n", "gd", "<CMD>Glance definitions<CR>")
	vim.keymap.set("n", "gr", "<CMD>Glance references<CR>")
	vim.keymap.set("n", "gy", "<CMD>Glance type_definitions<CR>")
	vim.keymap.set("n", "gi", "<CMD>Glance implementations<CR>")
end
