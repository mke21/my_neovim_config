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
