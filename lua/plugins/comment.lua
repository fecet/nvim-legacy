return function()
	require("nvim_comment").setup({
		hook = function()
			require("ts_context_commentstring.internal").update_commentstring()
			if vim.api.nvim_buf_get_option(0, "filetype") == "rmd" then
				vim.api.nvim_buf_set_option(0, "commentstring", "-- %s")
			elseif vim.api.nvim_buf_get_option(0, "filetype") == "lean3" then
				vim.api.nvim_buf_set_option(0, "commentstring", "-- %s")
			end
		end,
		comment_chunk_text_object = "gic",
	})
end
