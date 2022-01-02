require('nvim-treesitter.configs').setup({
    ensure_installed = 'maintained', -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ignore_install = {}, -- List of parsers to ignore installing
    indent = {
        enable = true
    },
    highlight = {
        enable = true, -- false will disable the whole extension
        use_languagetree = true,
    },
    rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than 1000 lines, int
        colors = {
            "#8be9fd",
            "#50fa7b",
            "#ffb86c",
            "#ff79c6",
            "#bd93f9"
        }, -- table of hex strings
    },
    context_commentstring = {enable = true, enable_autocmd = false},
    -- matchup = {enable = true},
    context = {enable = true, throttle = true},
    textobjects = {
        select = {
            enable = true,
            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,
            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["af"] = "@function.outer",
                ["if"] = "@function.inner",
                ["ac"] = "@class.outer",
                ["ic"] = "@class.inner",
            },
        },
        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                ["]["] = "@function.outer",
                ["]m"] = "@class.outer"
            },
            goto_next_end = {
                ["]]"] = "@function.outer",
                ["]M"] = "@class.outer"
            },
            goto_previous_start = {
                ["[["] = "@function.outer",
                ["[m"] = "@class.outer"
            },
            goto_previous_end = {
                ["[]"] = "@function.outer",
                ["[M"] = "@class.outer"
            }
        }
    },
})
