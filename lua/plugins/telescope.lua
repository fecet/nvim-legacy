return function()
	vim.cmd([[packadd plenary.nvim]])
	vim.cmd([[packadd popup.nvim]])
	vim.cmd([[packadd telescope-fzy-native.nvim]])
	vim.cmd([[packadd telescope-file-browser.nvim]])
	vim.cmd([[packadd refactoring.nvim]])
	vim.api.nvim_command([[packadd telescope-undo.nvim]])
	require("telescope").setup({
		defaults = {
			prompt_prefix = "🔭 ",
			-- prompt_position = 'top',
			selection_caret = " ",
			sorting_strategy = "ascending",
			-- results_width = 0.6,
			file_previewer = require("telescope.previewers").vim_buffer_cat.new,
			grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
			qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
		},
		--[[ extensions = {
fzy_native = {
override_generic_sorter = false,
override_file_sorter = true,
}
} ]]
	})
	-- require('telescope').load_extension('coc')
	-- require('telescope').load_extension('projects')
	-- require('telescope').load_extension('session-lens')
	require("telescope").load_extension("fzy_native")
	-- require("telescope").load_extension("themes")
	-- require("telescope").load_extension("gosource")
	require("telescope").load_extension("file_browser")
	require("telescope").load_extension("undo")
	require("telescope").load_extension("refactoring")
end
