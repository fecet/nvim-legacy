return function()
    vim.cmd('source ' .. "~/.config/nvim" .. '/lua/lsp/coq.vim')
    if not packer_plugins["nvim-lspconfig"].loaded then
        vim.cmd [[packadd nvim-lspconfig]]
    end


    if not packer_plugins["nvim-lsp-installer"].loaded then
        vim.cmd [[packadd nvim-lsp-installer]]
    end

    local lsp_installer = require "nvim-lsp-installer"
    -- require("plugins.treesitter")
    -- local coq=require("coq")

    -- 安装列表
    -- https://github.com/williamboman/nvim-lsp-installer#available-lsps
    -- { key: 语言 value: 配置文件 }
    local servers = {
      -- sumneko_lua = require "lsp.lua", -- /lua/lsp/lua.lua
      sumneko_lua = {}, -- /lua/lsp/lua.lua
      jedi_language_server = require "lsp.jedi",
      grammarly = require "lsp.grammarly",
      -- pyright={},
      -- pylsp={},
      -- html = {},
      -- jsonls = {},
      -- tsserver = {}
    }

    -- 自动安装 LanguageServers
    for name, _ in pairs(servers) do
      local server_is_found, server = lsp_installer.get_server(name)
      if server_is_found then
        if not server:is_installed() then
          print("Installing " .. name)
          server:install()
        end
      end
    end

    local function on_attach(_, bufnr)
      local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
      local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

      -- Enable completion triggered by <c-x><c-o>
      buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

      -- Mappings.
      local opts = { noremap=true, silent=true }

      -- See `:help vim.lsp.*` for documentation on any of the below functions
      buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
      buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
      buf_set_keymap('n', 'D', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
      buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
      buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
      --[[ buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
      buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
      buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts) ]]
      buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
      buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
      buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
      buf_set_keymap('n', '<space>dg', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
      buf_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
      buf_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
      buf_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)
      buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
          -- local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
    end


    lsp_installer.on_server_ready(
        function(server)
          local opts = servers[server.name]
          if opts then
            if (server.name == "sumneko_lua") then
                opts.settings = {
                    Lua = {
                        diagnostics = {globals = {"vim", "packer_plugins"}},
                        workspace = {
                            library = {
                                [vim.fn.expand "$VIMRUNTIME/lua"] = true,
                                [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true
                            },
                            maxPreload = 100000,
                            preloadFileSize = 10000
                        },
                        telemetry = {enable = false}
                    }
                }
            end
            opts.on_attach = on_attach
            opts.flags = {
              debounce_text_changes = 150,
            }
          -- server:setup(opts)
            local coq = require "coq" -- add this
            server:setup(coq.lsp_ensure_capabilities(opts))
          end
        end
    )
    vim.cmd('COQnow')
end
