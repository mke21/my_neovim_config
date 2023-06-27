--[[ init.lua ]]
--LEADER
vim.g.mapleader = " "
vim.g.localleader = "\\"

-- disable netrw
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

-- own config
require('commands')  -- own commands
require('terminal')  -- own commands
require("colors")    -- theme

if vim.g.neovide then
	vim.go.guifont = "SauceCodePro NF:h11"
end 
