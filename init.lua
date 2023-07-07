--[[ init.lua ]]
--LEADER
vim.g.mapleader = " "
vim.g.localleader = "\\"

-- disable netrw (native neovim file explorer)
-- we will use nvimtree instead
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- IMPORTS
require('vars')    -- Variables
require('opts')    -- Options
require('keys')    -- Keymaps
require('plugin')    -- Plugins


-- PLUGINS: Add this section
require('browser')  -- nvimtree
require('statusline') -- lualine
require('treesitterconf') -- treesitter
require('lspsettings') -- treesitter
require('pret')  -- prettier
require('markdown')  -- markdown

-- own config
require('commands')  -- own commands
require('terminal')  -- own commands
require("colors")    -- theme

if vim.g.neovide then
	vim.go.guifont = "LigaSauceCodePro NF:h11"
	vim.keymap.set('v', '<leader>c', '"+y') -- copy to clipboard in visual mode
	vim.keymap.set('n', '<m-v>', '"+P') -- paste from clipboard in normal mode
	vim.keymap.set('c', '<m-v>', '<C-r>+') -- paste from clipboard in command mode
	vim.keymap.set('i', '<m-v>', '<ESC>l"+Pli') -- paste from clipboard in insert mode
end 
