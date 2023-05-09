--[[ plugin.lua ]]
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

require("lazy").setup({
	"nvim-tree/nvim-tree.lua",
	"tomasiser/vim-code-dark",
	"nvim-lualine/lualine.nvim",
	"kyazdani42/nvim-web-devicons",
	"tpope/vim-fugitive",
	{'nvim-telescope/telescope.nvim', tag = '0.1.1',
      dependencies = { 'nvim-lua/plenary.nvim' }},
	{'nvim-lualine/lualine.nvim',
      dependencies = { 'kyazdani42/nvim-web-devicons' }},
})
