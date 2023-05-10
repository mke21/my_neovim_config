--[[ init.lua ]]
--LEADER
vim.g.mapleader = ";"
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

-- own config
require('commands')  -- own commands


-- Theme
vim.cmd.colorscheme "codedark"
