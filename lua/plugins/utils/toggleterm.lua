require("toggleterm").setup({
  -- terminal size
  size = 30,
})

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  -- switch to normal mode
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  -- vim.keymap.set('t', 'jk', [[<C-\><C-n>:exe v:count1 . "ToggleTerm"<CR>]], opts)
  -- terminal mode toggle terminal
  -- vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  -- vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  -- vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  -- vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  -- close terminal
  -- vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

vim.keymap.set('n', "<C-t>", [[<Cmd>exe v:count1 . "ToggleTerm"<CR>a]])
vim.keymap.set('i', "<C-t>", [[<Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>a]])
