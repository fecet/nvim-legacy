return function()
	require("refactoring").setup({
		prompt_func_return_type = {
			go = false,
			java = false,

			cpp = false,
			c = false,
			h = false,
			hpp = false,
			cxx = false,
		},
		prompt_func_param_type = {
			go = false,
			java = false,

			cpp = false,
			c = false,
			h = false,
			hpp = false,
			cxx = false,
		},
		printf_statements = {},
		print_var_statements = {},
	})
	vim.api.nvim_set_keymap(
		"v",
		"<leader>rr",
		"<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
		{ noremap = true }
	)
end
