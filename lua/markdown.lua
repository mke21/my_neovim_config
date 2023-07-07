-- disable header folding
vim.g.vim_markdown_folding_disabled = 1

-- do not use conceal feature, the implementation is not so good
vim.g.vim_markdown_conceal = 0

-- disable math tex conceal feature
vim.g.tex_conceal = ""
vim.g.vim_markdown_math = 1

-- support front matter of various format
vim.g.vim_markdown_frontmatter = 1  -- for YAML format
vim.g.vim_markdown_toml_frontmatter = 1  -- for TOML format
vim.g.vim_markdown_json_frontmatter = 1  -- for JSON format

-- config for instant-markdown
vim.g.instant_markdown_autostart = 0
vim.g.instant_markdown_allow_unsafe_content = 1
vim.g.instant_markdown_slow = 1
vim.g.instant_markdown_port = 8888 
vim.g.instant_markdown_open_to_the_world = 0
vim.g.instant_markdown_allow_external_requests = 0
vim.g.instant_markdown_mermaid = 1
vim.g.instant_markdown_autoscroll = 0

