-- vim.cmd('source ' .. "~/.config/nvim" .. '/lua/lsp/coq.vim')

-- vim.cmd [[packadd cmp-nvim-lsp]]
-- if not packer_plugins["nvim-lspconfig"].loaded then
--     vim.cmd [[packadd nvim-lspconfig]]
-- end

vim.cmd([[packadd cmp-nvim-lsp]])

local nvim_lsp = require("lspconfig")
local mason = require("mason")
local mason_lsp = require("mason-lspconfig")

mason.setup()
mason_lsp.setup({
	ensure_installed = {
		-- "bash-language-server",
		"efm",
		-- "lua-language-server",
		"sumneko_lua",
		"clangd",
		"gopls",
		-- "jedi_language_server",
		"pyright",
		"vimls",
		"cssls",
		"html",
	},
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local function custom_attach(_, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	-- Enable completion triggered by <c-x><c-o>
	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Mappings.
	local opts = { noremap = true, silent = true }

	-- See `:help vim.lsp.*` for documentation on any of the below functions
	buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	buf_set_keymap("n", "D", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	buf_set_keymap("n", "ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	buf_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	--[[ buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts) ]]
	buf_set_keymap("n", "<space>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	buf_set_keymap("n", "<space>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	buf_set_keymap("n", "<space>dg", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	buf_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
	buf_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
	buf_set_keymap("n", "<space>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
	buf_set_keymap("n", "<space>fm", "<cmd>lua vim.lsp.buf.format{async=true}<CR>", opts)
	-- buf_set_keymap("n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
	-- local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
end

for _, server in ipairs(mason_lsp.get_installed_servers()) do
	if server == "sumneko_lua" then
		nvim_lsp.sumneko_lua.setup({
			capabilities = capabilities,
			on_attach = custom_attach,
			settings = {
				Lua = {
					diagnostics = { globals = { "vim", "packer_plugins" } },
					workspace = {
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
						},
						maxPreload = 100000,
						preloadFileSize = 10000,
					},
					telemetry = { enable = false },
				},
			},
		})
	elseif server == "ltex" then
		nvim_lsp.ltex.setup({
			capabilities = capabilities,
			on_attach = custom_attach,
			settings = {
				ltex = {
					enabled = { "latex", "tex", "bib", "markdown", "rmd" },
					language = "en",
					diagnosticSeverity = "information",
					setenceCacheSize = 2000,
					additionalRules = {
						enablePickyRules = true,
						motherTongue = "en",
					},
					trace = { server = "verbose" },
					dictionary = {},
					disabledRules = {},
					hiddenFalsePositives = {},
				},
			},
		})
	elseif server == "pyright" then
		nvim_lsp.pyright.setup({
			capabilities = capabilities,
			on_attach = custom_attach,
			settings = {
				python = {
					analysis = {
						autoSearchPaths = true,
						diagnosticMode = "workspace",
						useLibraryCodeForTypes = true,
						typeCheckingMode = "off",
					},
				},
			},
		})
	elseif server == "clangd" then
		nvim_lsp.clangd.setup({
			capabilities = capabilities,
			single_file_support = true,
			on_attach = custom_attach,
			cmd = {
				"clangd",
				"--background-index",
				"--pch-storage=memory",
				-- You MUST set this arg ↓ to your clangd executable location (if not included)!
				"--query-driver=/usr/bin/clang++,/usr/bin/**/clang-*,/bin/clang,/bin/clang++,/usr/bin/gcc,/usr/bin/g++,/usr/bin/clangd",
				"--clang-tidy",
				"--all-scopes-completion",
				"--cross-file-rename",
				"--completion-style=detailed",
				"--header-insertion-decorators",
				"--header-insertion=iwyu",
			},
		})
	else
		nvim_lsp[server].setup({
			capabilities = capabilities,
			on_attach = custom_attach,
		})
	end
end

nvim_lsp.html.setup({
	cmd = { "html-languageserver", "--stdio" },
	filetypes = { "html" },
	init_options = {
		configurationSection = { "html", "css", "javascript" },
		embeddedLanguages = { css = true, javascript = true },
	},
	settings = {},
	single_file_support = true,
	flags = { debounce_text_changes = 500 },
	capabilities = capabilities,
	on_attach = custom_attach,
})

local efmls = require("efmls-configs")

-- Init `efm-langserver` here.

efmls.init({
	on_attach = custom_attach,
	capabilities = capabilities,
	init_options = { documentFormatting = true, codeAction = true },
})

-- Require `efmls-configs-nvim`'s config here

local vint = require("efmls-configs.linters.vint")
local clangtidy = require("efmls-configs.linters.clang_tidy")
local eslint = require("efmls-configs.linters.eslint")
local flake8 = require("efmls-configs.linters.flake8")
local shellcheck = require("efmls-configs.linters.shellcheck")
-- local staticcheck = require("efmls-configs.linters.staticcheck")

local black = require("efmls-configs.formatters.black")
-- local isort = require("efmls-configs.formatters.isort")
local luafmt = require("efmls-configs.formatters.stylua")
local clangfmt = require("efmls-configs.formatters.clang_format")
-- local goimports = require("efmls-configs.formatters.goimports")
local prettier = require("efmls-configs.formatters.prettier")
local shfmt = require("efmls-configs.formatters.shfmt")

-- Add your own config for formatter and linter here

-- local rustfmt = require("modules.completion.efm.formatters.rustfmt")

-- Override default config here

flake8 = vim.tbl_extend("force", flake8, {
	prefix = "flake8:",
	lintStdin = true,
	lintIgnoreExitCode = true,
	lintFormats = { "%f:%l:%c: %t%n%n%n %m" },
	lintCommand = "flake8 --max-line-length 160 --extend-ignore F403,F405,E203,E402,E731 --format '%(path)s:%(row)d:%(col)d: %(code)s %(code)s %(text)s' --stdin-display-name ${INPUT} -",
})

-- Setup formatter and linter for efmls here

efmls.setup({
	vim = { formatter = vint },
	lua = { formatter = luafmt },
	c = { formatter = clangfmt },
	cpp = { formatter = clangfmt },
	-- go = { formatter = goimports, linter = staticcheck },
	python = { formatter = { black }, linter = flake8 },
	vue = { formatter = prettier },
	typescript = { formatter = prettier, linter = eslint },
	javascript = { formatter = prettier, linter = eslint },
	typescriptreact = { formatter = prettier, linter = eslint },
	javascriptreact = { formatter = prettier, linter = eslint },
	yaml = { formatter = prettier },
	json = { formatter = prettier, linter = eslint },
	html = { formatter = prettier },
	css = { formatter = prettier },
	scss = { formatter = prettier },
	sh = { formatter = shfmt, linter = shellcheck },
	markdown = { formatter = prettier },
	-- rust = {formatter = rustfmt},
})

vim.cmd([[packadd lean.nvim]])
require("lean").setup({
	lsp3 = {
		on_attach = custom_attach,
		capabilities = capabilities,
		cmd = { "lean-language-server", "--stdio", "--", "-M", "10384", "-T", "100000" },
		-- filetypes = { "lean", "lean3" },
	},
	abbreviations = {
		enable = true,
		extra = {
			wknight = "♘",
			sun = "☼",
		},
		leader = "/",
	},
	mappings = true,
	-- ft = { default = "lean3" },
	progress_bars = {
		-- Enable the progress bars?
		enable = true,
		-- Use a different priority for the signs
		priority = 10,
	},
})

-- nvim_lsp.leanls.setup({
-- 	cmd = { "lean-language-server", "--stdio" },
-- 	capabilities = capabilities,
-- 	on_attach = custom_attach,
-- })
