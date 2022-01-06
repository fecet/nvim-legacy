return function ()
    require("coq_3p") {
        { src = "nvimlua", short_name = "nLUA" },
        { src = "vimtex", short_name = "vTEX" },
        { src = "bc", short_name = "MATH", precision = 6 },
        { src = "cow", trigger = "!cow" },
        { src = "figlet", short_name = "BIG" }


        -- {
        --   src = "repl",
        --   sh = "zsh",
        --   shell = { p = "perl", n = "node" },
        --   max_lines = 99,
        --   deadline = 500,
        --   unsafe = { "rm", "poweroff", "mv","sudo" }
        -- },
    }
end
