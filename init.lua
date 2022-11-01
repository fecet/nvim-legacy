-- __  ____   __  _   ___     _____ __  __ ____   ____
--|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
--| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
--| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
--|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|
local g = vim.g
g.mapleader = " "
vim.opt.termguicolors = true
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
	vim.cmd("packadd packer.nvim")
end

--require('impatient').enable_profile()

local disabled_built_ins = {
	"netrw",
	"netrwPlugin",
	"netrwSettings",
	"netrwFileHandlers",
	"gzip",
	"zip",
	"zipPlugin",
	"tar",
	"tarPlugin",
	"getscript",
	"getscriptPlugin",
	"vimball",
	"vimballPlugin",
	"2html_plugin",
	"logipat",
	"rrhelper",
	"spellfile_plugin",
	"matchit",
}

for _, plugin in pairs(disabled_built_ins) do
	g["loaded_" .. plugin] = 1
end

require("plugins")
require("packer_compiled")
require("dashboard1")
-- require("ultisnips")
require("colorscheme")

