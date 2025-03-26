vim.opt.foldcolumn = '0'
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldtext = ''

vim.opt.foldnestmax = 6
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

local function close_all_folds()
  vim.api.nvim_exec2('%foldc!', { output = false })
end
local function open_all_folds()
  vim.api.nvim_exec2('%foldo!', { output = false })
end

vim.keymap.set('n', '<leader>zc', close_all_folds, { desc = '[c]lose all folds' })
vim.keymap.set('n', '<leader>zo', open_all_folds, { desc = '[o]pen all folds' })

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
