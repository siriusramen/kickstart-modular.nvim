vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', '=ap', "ma=ap'a")

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])

vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d')

vim.keymap.set('n', '<leader>sr', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Search & Replace' })

vim.keymap.set('n', '<leader>tn', '<cmd>:set rnu!<CR>', { desc = 'Toggle relative number' })
vim.keymap.set('n', '<TAB>', '<cmd>:bnext<CR>', { noremap = true })
vim.keymap.set('n', '<BS>', '<cmd>:bprev<CR>', { noremap = true })

vim.keymap.set('n', '<leader>lf', function()
  require('conform').format { async = true, lsp_format = 'fallback' }
end, { desc = 'Format buffer' })

---@module 'snacks'
vim.keymap.set('n', '<leader>f', function()
  Snacks.picker.files()
end, { desc = 'Files' })

vim.keymap.set('n', '<leader>b', function()
  Snacks.picker.buffers()
end, { desc = 'Buffers' })

vim.keymap.set('n', '<leader>cf', function()
  Snacks.picker.files { cwd = vim.fn.stdpath 'config' }
end, { desc = 'Config Files' })

vim.keymap.set('n', '<leader>g', function()
  Snacks.picker.grep()
end, { desc = 'Grep' })

vim.keymap.set('n', '<leader>e', function()
  Snacks.explorer()
end, { desc = 'Explorer' })

vim.keymap.set('n', '<leader>cs', function()
  Snacks.picker.colorschemes()
end, { desc = 'Colorschemes' })

vim.keymap.set('n', '<leader>:', function()
  Snacks.picker.command_history()
end, { desc = 'Command History' })

vim.keymap.set('n', '<leader>ld', function()
  Snacks.picker.lsp_definitions()
end, { desc = 'Goto Definition' })

vim.keymap.set('n', '<leader>lD', function()
  Snacks.picker.lsp_declarations()
end, { desc = 'Goto Declaration' })

vim.keymap.set('n', '<leader>lr', function()
  Snacks.picker.lsp_references()
end, { desc = 'Goto Rerefence' })

vim.keymap.set('n', '<leader>ut', function()
  Snacks.picker.undo()
end, { desc = 'Undo Tree' })

vim.keymap.set('n', '<leader>sd', function()
  Snacks.picker.diagnostics()
end, { desc = 'Diagnostics' })

vim.keymap.set('n', '<leader>sh', function()
  Snacks.picker.help()
end, { desc = 'Help' })

-- vim: ts=2 sts=2 sw=2 et
