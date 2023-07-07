# My neovim config

Changed my config from a mixture of vimscript and lua to fully lua. I also changed from Plug
to Lazy, although I don't ustelise the full featureset of Lazy, yet.
I made telescope an integral part of my workflow, relying less on vimtree for file navigation.
Needs the font LigaSauceCodePro NF to be installed on the system when using neovide. For the
terminal, the used font should be a nerdfont.

## Added Keybindings

Leader is `<space>`

### buffers tabs and windows

- move between windows with `<c-j>`, `<c-h>`, `<c-k>`, `<c-l>`
- `<c-right>` next buffer
- `<c-left>` previous buffer
- `<m-b>` telescope navigation through buffer
- `<m-left>` next tab
- `<m-right>` previous tab
- `<m-up>` create new tab
- `<m-down>` close tab
- `<m-t>` toggle terminal

### resize windows

Use cursor keys in command mode to resize the windows


### File management

- `<c-n>` open treeview side bar
- `<m-p>` open telescope file browser
- `<m-p>` grep in current directory
- `<leader>cd` cd into the parent directory of current active buffer

## Added commands

- `:Config` open telescope with all the config files
- `:BuffOnly` close all buffers except the active one.


## Copilot

- `<m-c>` accept copilot suggestion
- `<m-[>` previous suggestion
- `<m-]>` next suggestion

## Refactor

- `<m-r>` in visual mode, opens telescope to chose refactor option

## Git

- `:Git` or `:G` to execute a git command

## Neovide

Special neovide settings for copy/paste

- `<leader>c` copy from clipboard in visual mode
- `<m-v>` paste from clipboard
