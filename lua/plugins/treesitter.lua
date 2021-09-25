return function()
  require('nvim-treesitter.configs').setup({
    ensure_installed = 'all', -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ignore_install = {}, -- List of parsers to ignore installing
    highlight = {
      enable = true, -- false will disable the whole extension
      use_languagetree = true,
    },
    autopairs = {
      enable = true
    },
    --matchip = {enable = true},
    rainbow = {
    enable = true,
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than 1000 lines, int
	colors = {
            "#8be9fd",
            "#50fa7b",
            "#ffb86c",
            "#ff79c6",
            "#bd93f9"}, -- table of hex strings
    },
    --refactor = {
      --highlight_definitions = { enable = true },
      --highlight_current_scope = { enable = true },
      --smart_rename = {
        --enable = true,
        --keymaps = {
          --smart_rename = "grr",
        --},
      --},
      --navigation = {
        --enable = true,
        --keymaps = {
          --goto_definition = "gnd",
          --list_definitions = "gnD",
          --list_definitions_toc = "gO",
          --goto_next_usage = "<a-*>",
          --goto_previous_usage = "<a-#>",
        --},
      --},
    --},
    --textobjects = {
      --select = {
        --enable = true,
        ---- Automatically jump forward to textobj, similar to targets.vim
        --lookahead = true,
        --keymaps = {
          ---- You can use the capture groups defined in textobjects.scm
          --["af"] = "@function.outer",
          --["if"] = "@function.inner",
          --["ac"] = "@class.outer",
          --["ic"] = "@class.inner",
        --},
      --},
    --},
  })
end
