return function()
    local g = vim.g
    g.UltiSnipsExpandTrigger="<nop>"
    g.UltiSnipsJumpForwardTrigger="<tab>"
    g.UltiSnipsJumpBackwardTrigger="<s-tab>"
    g.UltiSnipsEditSplit="vertical"
    g.UltiSnipsSnippetDirectories={vim.fn.stdpath('config').."/vim-snippets/UltiSnips"}
end

