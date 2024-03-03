require'nvim-treesitter.configs'.setup {
  -- 添加不同语言
  -- A list of parser names
  ensure_installed = { "vim", "bash", "javascript", "json", "lua", "python", "typescript", "tsx", "css",  "markdown", "markdown_inline" }, -- one of "all" or a list of languages

  highlight = { enable = true },
  indent = { enable = true },

  -- 不同括号颜色区分
  -- rainbow = {
  --   enable = true,
  --   extended_mode = true,
  --   max_file_lines = nil,
  -- }
}
