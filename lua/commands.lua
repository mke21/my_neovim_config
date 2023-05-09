--[[ commands.lua ]]

local coms = vim.api.nvim_create_user_command

coms(
'Config', 
function ()
	require('telescope.builtin').find_files({cwd="~/.config/nvim"})
end,
{}
)

