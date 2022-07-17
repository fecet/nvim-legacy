local g = vim.g
-- g.UltiSnipsExpandTrigger="<f20>"
-- g.UltiSnipsJumpForwardTrigger="<f21>"
-- g.UltiSnipsJumpBackwardTrigger="<s-f21>"
g.UltiSnipsEditSplit="vertical"
g.UltiSnipsSnippetDirectories={
    vim.fn.stdpath('data')..'/site/pack/packer/start/vim-snippets/UltiSnips',
    vim.fn.stdpath('data')..'/site/pack/packer/opt/vim-snippets/UltiSnips',
}
