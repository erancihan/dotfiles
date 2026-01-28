require "user.options"
require "user.keymaps"
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("user.lazy")
-- require "user.theme"
require "user.autopairs"
require "user.tree"
require "user.treesitter"
require "user.bufferline"
require "user.lualine"
require "user.whichkey"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.gitsigns"
