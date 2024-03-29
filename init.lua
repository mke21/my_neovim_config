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
-- 
-- -- own config
require('commands')  -- own commands
require('terminal')  -- own commands
require("colors")    -- theme
require('neovide')   -- neovide settings

