return function()
    local remap = vim.api.nvim_set_keymap
    local npairs = require('nvim-autopairs')
    -- local press = function(key)
    --     vim.fn.feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true))
    -- end
    local t = function(str)
        return vim.api.nvim_replace_termcodes(str, true, true, true)
    end

    npairs.setup(
        {
          map_bs = false,
          map_cr = false,
          check_ts= true,
        }
    )

    -- skip it, if you use another global object
    _G.MUtils= {}

    MUtils.CR = function()
        if vim.fn["UltiSnips#CanExpandSnippet"]() ~= 0 then
            -- return press("<C-R>=UltiSnips#ExpandSnippet()<CR>")
            return t "<cmd>call UltiSnips#ExpandSnippet()<CR>"
        else
            if vim.fn.pumvisible() ~= 0 then
                if vim.fn.complete_info({ 'selected' }).selected ~= -1 then
                    return npairs.esc('<c-y>')
                else
                    return npairs.esc('<c-e>') .. npairs.autopairs_cr()
                end
            else
                return npairs.autopairs_cr()
            end
        end
    end
    remap('i', '<cr>', 'v:lua.MUtils.CR()', { expr = true, noremap = true })

    -- MUtils.BS = function()
    --     if vim.fn.pumvisible() ~= 0 and vim.fn.complete_info({ 'mode' }).mode == 'eval' then
    --         return npairs.esc('<c-e>') .. npairs.autopairs_bs()
    --     else
    --         return npairs.autopairs_bs()
    --     end
    -- end
    -- remap('i', '<bs>', 'v:lua.MUtils.BS()', { expr = true, noremap = true })


end

