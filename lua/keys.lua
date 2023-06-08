--[[ keys.lua ]]
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

local function nkeymap(key, map)
  keymap('n', key, map, opts)
end


-- window navigatie
nkeymap('<c-j>', '<c-w>j')
nkeymap('<c-h>', '<c-w>h')
nkeymap('<c-k>', '<c-w>k')
nkeymap('<c-l>', '<c-w>l')

-- Buffer navigatie
nkeymap('<c-right>', ':bn<CR>')
nkeymap('<c-left>',  ':bp<CR>')
nkeymap('<c-down>',  ':bd<CR>')
nkeymap('<c-up>',    ':b<CR>')

-- tab navigatie
nkeymap('<m-right>', ':tabnext<CR>')
nkeymap('<m-left>',  ':tabprev<CR>')
nkeymap('<m-up>',    ':tabnew %<CR>')
nkeymap('<m-down>',  ':tabclose<CR>')

-- resize windows
nkeymap('<Up>',    ':resize -2<CR>'          )
nkeymap('<Down>',  ':resize +2<CR>'          )
nkeymap('<Left>',  ':vertical resize -2<CR>' )
nkeymap('<Right>', ':vertical resize +2<CR>' )

-- zet directory van huidige buffer als werk
nkeymap('<leader>cd', ':cd %:p:h<CR>:pwd<CR>')
-- prettier
nkeymap('<leader>p', ':Prettier<CR>')

-- patch voor hertekenen van highlight
nkeymap('<F12>', '<cmd>syntax sync fromstart<CR>')
-- reload config
nkeymap('<m-r>', '<cmd>source $MYVIMRC<CR>')

-- nvim-tree
nkeymap('<c-n>', ':NvimTreeToggle<CR>')

-- telescope
-- fuzzyfinding
nkeymap('<m-p>', '<cmd>Telescope find_files<cr>')
nkeymap('<m-g>', '<cmd>Telescope live_grep<cr>')
nkeymap('<m-b>', '<cmd>Telescope buffers<cr>')


-- Set the Copilot no tab map option
vim.g.copilot_assume_mapped = true
vim.g.copilot_no_tab_map = true
-- Map Ctrl-J in insert mode to accept Copilot suggestions
vim.api.nvim_set_keymap('i', '<m-c>', 'copilot#Accept("<CR>")', {expr = true, silent = true})

if vim.fn.has("win32") == 1 then
  vim.o.mouse = "a"
  vim.api.nvim_set_keymap("v", "<LeftRelease>", "\"ygv\"", { noremap = true })
  vim.api.nvim_set_keymap("n", "<C-x>", "<C-v>", { noremap = true })
else
  vim.o.mouse = "v" -- middle click paste with mouse
end

-- toggleterm
-- nkeymap('<m-t>', '<cmd>ToggleTerm<CR>')
-- keymap('i', '<m-t>', '<cmd>ToggleTerm<CR>', opts)
