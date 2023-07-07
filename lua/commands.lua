--[[ commands.lua ]]

local coms = vim.api.nvim_create_user_command

coms(
'Config', 
function ()
    VIMCONFIG = vim.fn.fnamemodify(vim.fn.expand('$MYVIMRC'), ':h')
    require('telescope.builtin').find_files({cwd=VIMCONFIG})
end,
{}
)

coms(
  'BuffOnly',
  function ()
	vim.cmd(':%bd|e#|bd#')
  end,
  {}
)

