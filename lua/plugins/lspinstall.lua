return function()
  local M = {}

  local opts = {noremap = true, silent = true}
  -- keymaps
  local on_attach = function(client, bufnr)
    local function buf_set_keymap(...)
      vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
      vim.api.nvim_buf_set_option(bufnr, ...)
    end
    if client.name == 'java' then
      require('jdtls.dap').setup_dap_main_class_configs()
      -- require('jdtls').setup_dap({hotcodereplace = 'auto'})
      require('jdtls').setup_dap()
      require('jdtls.setup').add_commands()
    end

    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gd', '<Cmd>Telescope lsp_definitions<CR>', opts)
    buf_set_keymap('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
    buf_set_keymap('n', 'gi', '<cmd>Telescope lsp_implementations<CR>', opts)
    buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>',
                   opts)
    buf_set_keymap('n', '<leader>wa',
                   '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<leader>wr',
                   '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    buf_set_keymap('n', '<leader>wl',
                   '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
                   opts)
    buf_set_keymap('n', '<leader>D',
                   '<cmd>Telescope lsp_type_definitions<CR>', opts)
    buf_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    buf_set_keymap('n', '<leader>e',
                   '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>',
                   opts)
    buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>',
                   opts)
    buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>',
                   opts)
    buf_set_keymap('n', '<leader>q',
                   '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    buf_set_keymap('n', '<leader>ca',
                   "<Cmd>lua require('jdtls').code_action()<CR>", opts)
    buf_set_keymap('v', '<leader>ca',
                   "<Cmd>lua require('jdtls').code_action(true)<CR>", opts)
    buf_set_keymap('n', '<leader>cr',
                   "<Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>",
                   opts)
    buf_set_keymap('n', '<leader>co',
                   "<Cmd>lua require('jdtls').organize_imports()<CR>", opts)
    buf_set_keymap('n', '<leader>cv',
                   "<Cmd>lua require('jdtls').extract_variable()<CR>", opts)
    buf_set_keymap('v', '<leader>cv',
                   "<Cmd>lua require('jdtls').extract_variable(true)<CR>", opts)
    buf_set_keymap('n', '<leader>ct',
                   "<Cmd>lua require('jdtls').extract_constant()<CR>", opts)
    buf_set_keymap('v', '<leader>ct',
                   "<Cmd>lua require('jdtls').extract_constant(true)<CR>", opts)
    buf_set_keymap('v', '<leader>cm',
                   "<Cmd>lua require('jdtls').extract_method(true)<CR>", opts)
    -- If using nvim-dap
    -- This requires java-debug and vscode-java-test bundles, see install steps in this README further below.
    buf_set_keymap('n', '<leader>cjt',
                   "<Cmd>lua require('jdtls').test_class()<CR>", opts)
    buf_set_keymap('n', '<leader>cjn',
                   "<Cmd>lua require('jdtls').test_nearest_method()<CR>", opts)
    -- Set some keybinds conditional on server capabilities
    if client.resolved_capabilities.document_formatting then
      buf_set_keymap("n", "<leader>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>",
                     opts)
    elseif client.resolved_capabilities.document_range_formatting then
      buf_set_keymap("n", "<leader>fm",
                     "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
    end

    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
      vim.api.nvim_exec([[
    augroup lsp_document_highlight
    autocmd! * <buffer>
    autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
    autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
    augroup END
    ]], false)
    end
  end

  -- Configure lua language server for neovim development

  -- config that activates keymaps and enables snippet support
  local function make_config()
    -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
    capabilities.textDocument.completion.completionItem.snippetSupport = true
    capabilities.textDocument.completion.completionItem.resolveSupport = {
      properties = {'documentation', 'detail', 'additionalTextEdits'}
    }
    return {
      -- enable snippet support
      capabilities = capabilities,
      -- map buffer local keybindings when the language server attaches
      on_attach = on_attach
    }
  end

  -- lsp-install
  M.setup_servers = function()
    require'lspinstall'.setup()

    -- get all installed servers
    local servers = require'lspinstall'.installed_servers()
    -- ... and add manually installed servers
    table.insert(servers, "clangd")
    table.insert(servers, "sourcekit")

    for _, server in pairs(servers) do
      local config = make_config()

      -- language specific config
      if server == "lua" then config.settings = require('lsp.lua.settings') end
      if server == "sourcekit" then
        config.filetypes = {"swift", "objective-c", "objective-cpp"}; -- we don't want c and cpp!
      end
      if server == "clangd" then
        config.filetypes = {"c", "cpp"}; -- we don't want objective-c and objective-cpp!
      end
      if server == "java" then

        local javaconf = require('lsp.java.settings')
        config.init_options = javaconf.init_options
        config.settings = javaconf.settings
        config.on_init = javaconf.on_init
        -- config.capabilities = javaconf.capabilities
        config.capabilities.workspace.configuration = true
        config.capabilities.textDocument.codeAction = {
          dataSupport = true;
          resolveSupport = {
            properties = {'edit',}
          };
          codeActionLiteralSupport = {
            codeActionKind = {
              valueSet = {
                  "source.generate.toString",
                  "source.generate.hashCodeEquals",
                  "source.organizeImports",
              };
            };
          };
        }
        config.cmd = javaconf.cmd
        config.filetypes = {'java'}
        config.flags = {allow_incremental_sync = true}
        -- config.handlers = javaconf.handlers
      end
      require'lspconfig'[server].setup(config)
      -- java lsp setting is specific by nvim-jdtls
      --[[ if server ~= "java" then
      require'lspconfig'[server].setup(config)
    end ]]
    end
  end
  M.setup_servers()
  -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
  require('lspinstall').post_install_hook = function()
    M.setup_servers() -- reload installed servers
    vim.cmd('bufdo e') -- this triggers the FileType autocmd that starts the server
  end
end
