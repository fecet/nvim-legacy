return function()
	require("dashboard").setup({
		theme = "hyper",
		header = { "It's my duty" },
		config = {
			shortcut = {
				{ desc = " Update", group = "@property", action = "Lazy update", key = "u" },
				{
					desc = " Files",
					group = "Label",
					action = "Telescope find_files",
					key = "f",
				},
				{
					desc = " Apps",
					group = "DiagnosticHint",
					action = "Telescope app",
					key = "a",
				},
				{
					desc = " dotfiles",
					group = "Number",
					action = "Telescope dotfiles",
					key = "d",
				},
			},
			hide = {
				tabline = false,
			},
		},
		-- preview = {
		-- 	command = "cat",
		-- 	file_path = vim.fn.stdpath("config") .. "/nvchad.cat",
		-- 	file_height = 8,
		-- 	file_width = 80,
		-- },
	})
end
