-- my nvim config write in lua
-- __  ____   __  _   ___     _____ __  __ ____   ____
--|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
--| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
--| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
--|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|
local g = vim.g
g.mapleader = " "
vim.opt.termguicolors = true
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

require('plugins')
require('settings')


