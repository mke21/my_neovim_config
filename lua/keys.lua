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
-- nkeymap('<c-down>',  ':bd<CR>')
-- nkeymap('<c-up>',    ':b<CR>')

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
nkeymap('<leader>pt', ':Prettier<CR>')

-- toggle spellcheck
nkeymap('<leader>sp', ':setlocal spell!<CR>')

-- toggle highlight
nkeymap('<leader>nh', ':noh<CR>')

-- patch voor hertekenen van highlight
nkeymap('<F12>', '<cmd>syntax sync fromstart<CR>')

-- nvim-tree
nkeymap('<c-n>', ':NvimTreeToggle<CR>')

-- telescope
-- fuzzyfinding
nkeymap('<m-p>', '<cmd>Telescope find_files<cr>')
nkeymap('<m-g>', '<cmd>Telescope live_grep<cr>')
nkeymap('<m-b>', '<cmd>Telescope buffers<cr>')
nkeymap('<leader>ff', '<cmd>Telescope current_buffer_fuzzy_find<cr>')
nkeymap('<leader>rr', '<cmd>Telescope lsp_references<cr>')

-- lsp
nkeymap('<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
nkeymap('<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
nkeymap('<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>')
nkeymap('<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')


-- Set the Copilot no tab map option
vim.g.copilot_assume_mapped = true
vim.g.copilot_no_tab_map = true
-- Map Ctrl-J in insert mode to accept Copilot suggestions
vim.api.nvim_set_keymap('i', '<m-c>', 'copilot#Accept("<CR>")', {expr = true, silent = true})

-- remap to open the Telescope refactoring menu in visual mode
vim.api.nvim_set_keymap(
	"v",
	"<m-r>",
	"<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
	{ noremap = true }
)
