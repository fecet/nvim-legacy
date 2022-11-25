return function()
    -- local remap = vim.api.nvim_set_keymap
    local npairs = require('nvim-autopairs')

    npairs.setup(
        {
            -- map_bs = false,
            -- map_cr = false,
            check_ts= true,
        }
    )

    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
	-- local cmp = require("cmp")
	-- cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({ map_char = { tex = "" } }))
	-- cmp_autopairs.lisp[#cmp_autopairs.lisp + 1] = "racket"
	if not packer_plugins["nvim-cmp"].loaded then
		vim.cmd([[packadd nvim-cmp]])
	end
    local cmp = require('cmp')
    cmp.event:on(
      'confirm_done',
      cmp_autopairs.on_confirm_done()
    )


end

