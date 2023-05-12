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
  "equalsraf/neovim-gui-shim",
  "Mofiqul/vscode.nvim",
  "nvim-tree/nvim-tree.lua",
  "nvim-lualine/lualine.nvim",
  "kyazdani42/nvim-web-devicons",
  "tpope/vim-fugitive",
  {'nvim-telescope/telescope.nvim', tag = '0.1.1',
  dependencies = { 'nvim-lua/plenary.nvim' }},
  {'nvim-lualine/lualine.nvim',
  dependencies = { 'kyazdani42/nvim-web-devicons' }},
  "tpope/vim-sleuth",
  { -- LSP Configuration & Plugins
  'neovim/nvim-lspconfig',
  dependencies = {
    -- Automatically install LSPs to stdpath for neovim
    { 'williamboman/mason.nvim', config = true },
    'williamboman/mason-lspconfig.nvim',

    -- Useful status updates for LSP
    -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
    { 'j-hui/fidget.nvim', opts = {} },

    -- Additional lua configuration, makes nvim stuff amazing!
    'folke/neodev.nvim',
  },
},
{ -- Autocompletion
'hrsh7th/nvim-cmp',
dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  },
  { -- Adds git releated signs to the gutter, as well as utilities for managing changes
  'lewis6991/gitsigns.nvim',
  opts = {
    -- See `:help gitsigns.txt`
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
  },
},
-- "gc" to comment visual regions/lines
{ 'numToStr/Comment.nvim', opts = {} },
{ -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ":TSUpdate",
  },
  "github/copilot.vim",
  "akinsho/nvim-toggleterm.lua"
})
