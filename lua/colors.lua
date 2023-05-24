-- local c = require('vscode.colors').get_colors()
-- require('vscode').setup({
--     -- Alternatively set style in setup
--     style = 'dark',
-- 
--     -- Enable transparent background
--     transparent = true,
-- 
--     -- Enable italic comment
--     italic_comments = true,
-- 
--     -- Disable nvim-tree background color
--     disable_nvimtree_bg = true,
-- 
--     -- Override colors (see ./lua/vscode/colors.lua)
--     color_overrides = {
--         vscLineNumber = c.vscGrey,
--     },
-- 
--     -- Override highlight groups (see ./lua/vscode/theme.lua)
--     group_overrides = {
--         -- this supports the same val table as vim.api.nvim_set_hl
--         -- use colors from this colorscheme by requiring vscode.colors!
--         Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
--     }
-- })
-- require('vscode').load()

require('nightfox').setup({
  options = {
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
      operators = "bold",
    }

  }
})
vim.cmd("colorscheme carbonfox")
