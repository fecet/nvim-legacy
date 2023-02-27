return function()
	vim.schedule(function()
		require("copilot").setup({
			suggestion = {
				enabled = false,
				auto_trigger = false,
				debounce = 75,
				keymap = {
					accept = "<M-l>",
					next = "<M-]>",
					prev = "<M-[>",
					dismiss = "<C-]>",
				},
			},
			panel = { enabled = false },
		})
	end)
end
